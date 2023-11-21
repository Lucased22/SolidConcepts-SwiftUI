//
//  PaymentProcessor.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

class PaymentProcessor {
    private let authenticationService: AuthenticationProtocol
    private let paymentMethodService: PaymentMethodService
   
    
    init(authenticationService: AuthenticationProtocol,
         paymentMethodService: PaymentMethodService) {
        self.authenticationService = authenticationService
        self.paymentMethodService = paymentMethodService
       
    }
    
    func processPayment(paymentModel: PaymentModel, completion: @escaping (String?) -> Void) {
        guard authenticationService.authenticate(user: paymentModel.user, password: paymentModel.password) else {
            completion("Authentication failed")
            return
        }
        
        guard paymentMethodService.processPayment(amount: paymentModel.amount) else {
            completion("Payment processing failed")
            return
        }
        
    }
}
