//
//  AuthenticationViewModel.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    private let authenticationService: AuthenticationProtocol

    @Published var isAuthenticated: Bool = false

    init(authenticationService: AuthenticationProtocol) {
        self.authenticationService = authenticationService
    }

    func authenticate() {
        isAuthenticated = authenticationService.authenticate(user: "user123", password: "password")
    }

    func resetAuthentication() {
        isAuthenticated = false
    }
}
