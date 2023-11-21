//
//  ReceiptGenerationService.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

protocol ReceiptGenerationProtocol {
    func generateReceipt(orderID: String, amount: Double) -> String
}

class ReceiptGenerationService: ReceiptGenerationProtocol {
    func generateReceipt(orderID: String, amount: Double) -> String {
        // Lógica de geração de recibos
        return "Receipt for Order \(orderID), Amount \(amount)"
    }
}
