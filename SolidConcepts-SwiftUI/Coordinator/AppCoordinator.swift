//
//  AppCoordinator.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//
import Foundation
import Combine
import SwiftUI

protocol CoordinatorProtocol: AnyObject {
    func navigateToAuthentication()
    func navigateToPayment()
    func navigateToReceipt()
}

class AppCoordinator: CoordinatorProtocol, ObservableObject {
    @Published var isAuthenticated = false
    @Published var isPaymentSuccessful = false

    func navigateToAuthentication() {
        isAuthenticated = false
        isPaymentSuccessful = false
    }

    func navigateToPayment() {
        isAuthenticated = true
        isPaymentSuccessful = false
    }

    func navigateToReceipt() {
        isAuthenticated = true
        isPaymentSuccessful = true
    }
}

