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
                AuthenticationView(viewModel: AuthenticationViewModel(authenticationService: AuthenticationService(), coordinator: coordinator))
            } else if !coordinator.isPaymentSuccessful {
                PaymentMethodView(viewModel: PaymentMethodViewModel(paymentMethodService: PaymentMethodService(), coordinator: coordinator))
            } else {
                ReceiptGenerationView(viewModel: ReceiptGenerationViewModel(receiptGenerationService: ReceiptGenerationService(), coordinator: coordinator))
            }
        }
        .environmentObject(coordinator)
    }
}


