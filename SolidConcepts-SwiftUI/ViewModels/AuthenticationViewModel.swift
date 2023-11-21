//
//  AuthenticationViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    @Published var isAuthenticated: Bool = false
    weak var coordinator: CoordinatorProtocol?
    private var authenticationService: AuthenticationService
    
    init(authenticationService: AuthenticationService) {
        self.authenticationService = authenticationService
    }
    
    
    func authenticate() {
        isAuthenticated = authenticationService.authenticate(user: "user123", password: "password")
        coordinator?.navigateToPayment()
    }
    
    func resetAuthentication() {
        isAuthenticated = false
    }
}
