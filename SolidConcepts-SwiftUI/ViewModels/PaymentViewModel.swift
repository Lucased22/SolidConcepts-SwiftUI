//
//  PaymentViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

class PaymentMethodViewModel: ObservableObject {
    private let paymentMethodService: PaymentMethodService

    @Published var isPaymentSuccessful: Bool = false

    init(paymentMethodService: PaymentMethodService) {
        self.paymentMethodService = paymentMethodService
    }

    func processPayment() {
        isPaymentSuccessful = paymentMethodService.processPayment(amount: 100.0)
    }

    func resetPaymentProcessing() {
        isPaymentSuccessful = false
    }
}
