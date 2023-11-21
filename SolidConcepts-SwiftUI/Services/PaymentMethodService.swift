//
//  PaymentManager.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

protocol PaymentMethod {
    func processPayment(amount: Double) -> Bool
}

class PaymentMethodService: PaymentMethod {
    func processPayment(amount: Double) -> Bool {
        // Lógica de processamento de pagamento
        return true
    }
}

