//
//  ReceiptGenerationViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation
import Foundation

protocol ReceiptGenerationProtocol {
    func generateReceipt(orderID: String, amount: Double) -> String
}

class ReceiptGenerationViewModel: ObservableObject {
    private let receiptGenerationService: ReceiptGenerationProtocol

    @Published var receipt: String?

    init(receiptGenerationService: ReceiptGenerationProtocol) {
        self.receiptGenerationService = receiptGenerationService
    }

    func generateReceipt() {
        receipt = receiptGenerationService.generateReceipt(orderID: "123", amount: 100.0)
    }
}

