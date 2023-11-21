//
//  AuthManager.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import  Foundation

protocol AuthenticationProtocol {
    func authenticate(user: String, password: String) -> Bool
}

class AuthenticationService: AuthenticationProtocol {
    func authenticate(user: String, password: String) -> Bool {
        // Lógica de autenticação
        return true
    }
}
