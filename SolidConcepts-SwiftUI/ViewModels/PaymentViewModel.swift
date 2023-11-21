//
//  PaymentViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

class PaymentMethodViewModel: ObservableObject {
    @Published var isPaymentSuccessful: Bool = false
    weak var coordinator: CoordinatorProtocol?
    private var paymentMethodService: PaymentMethodService
    
    init(paymentMethodService: PaymentMethodService) {
        self.paymentMethodService = paymentMethodService
    }
    
    
    func processPayment() {
        isPaymentSuccessful = paymentMethodService.processPayment(amount: 100.0)
        coordinator?.navigateToReceipt()
    }
    
    func resetPaymentProcessing() {
        isPaymentSuccessful = false
    }
}
