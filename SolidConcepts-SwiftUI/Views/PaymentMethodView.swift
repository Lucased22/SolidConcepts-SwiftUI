//
//  PaymentMethodView.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//
import SwiftUI

struct PaymentMethodView: View {
    @ObservedObject var viewModel: PaymentMethodViewModel

    var body: some View {
        VStack {
            Text("Payment Method View")

            Button("Process Payment") {
                viewModel.processPayment()
            }
            .padding()
        }
        .onAppear {
            viewModel.resetPaymentProcessing()
        }
    }
}

