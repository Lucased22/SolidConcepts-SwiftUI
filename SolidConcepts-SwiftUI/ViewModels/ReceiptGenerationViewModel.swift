//
//  ReceiptGenerationViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation


class ReceiptGenerationViewModel: ObservableObject {
    private let receiptGenerationService: ReceiptGenerationService
    @Published var receipt: String?
    

    init(receiptGenerationService: ReceiptGenerationService) {
        self.receiptGenerationService = receiptGenerationService
    }

    func generateReceipt() {
        receipt = receiptGenerationService.generateReceipt(orderID: "123", amount: 100.0)
    }
}

