//
//  KeypadView.swift
//  kiosk-keypad
//
//  Created by Sarah Munguia on 2/18/24.
//

import SwiftUI

struct KeypadView: View {
    @ObservedObject var viewModel: KeypadViewModel
    var size: CGSize

    var body: some View {
        // Use a smaller percentage of the width for each button, like 10%.
        let buttonSize = size.width * 0.1  // Adjust this value as needed

        VStack(spacing: 20) {
            ForEach(viewModel.keypadButtons, id: \.self) { row in
                HStack(spacing: 20) {
                    ForEach(row) { button in
                        KeypadButton(symbol: button.label) {
                            viewModel.processInput(button)
                        }
                        .frame(width: buttonSize, height: buttonSize)
                        .background(Color.gray.opacity(0.5)) // Adjust opacity for lighter gray
                        .foregroundColor(.white)
                        .clipShape(Circle())
                    }
                }
            }
        }
        .padding() // Add padding around the entire VStack
    }
}
