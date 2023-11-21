//
//  ReceiptGenerationView.swift
//  SolidConcepts-SwiftUI
//
//  Created by Lucas Santos on 20/11/23.
//

import Foundation
import SwiftUI

struct ReceiptGenerationView: View {
    @ObservedObject var viewModel: ReceiptGenerationViewModel

    var body: some View {
        VStack {
            Text("Receipt Generation View")

            if let receipt = viewModel.receipt {
                Text("Receipt: \(receipt)")
            }
        }
        .onAppear {
            viewModel.generateReceipt()
        }
    }
}
