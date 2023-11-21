//
//  AuthenticationView.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation
import SwiftUI

import SwiftUI

struct AuthenticationView: View {
    @ObservedObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            Text("Authentication View")
            
            Button("Authenticate") {
                viewModel.authenticate()
            }
            .padding()
            
            NavigationLink(
                destination: PaymentMethodView(viewModel: PaymentMethodViewModel(paymentMethodService: PaymentMethodService())),
                isActive: $viewModel.isAuthenticated,
                label: { EmptyView() }
            )
        }
    }
}
