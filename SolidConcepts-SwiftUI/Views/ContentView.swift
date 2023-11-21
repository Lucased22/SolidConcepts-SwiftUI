//
//  ContentView.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 16/11/23.
//
import SwiftUI

struct ContentView: View {
    @StateObject private var coordinator = AppCoordinator()

    var body: some View {
        NavigationView {
            if !coordinator.isAuthenticated {
                AuthenticationView(viewModel: AuthenticationViewModel(authenticationService: AuthenticationService()))
            } else if !coordinator.isPaymentSuccessful {
                PaymentMethodView(viewModel: PaymentMethodViewModel(paymentMethodService: PaymentMethodService()))
            } else {
                ReceiptGenerationView(viewModel: ReceiptGenerationViewModel(receiptGenerationService: ReceiptGenerationService()))
            }
        }
        .environmentObject(coordinator)
    }
}


