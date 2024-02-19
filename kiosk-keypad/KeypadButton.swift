//
//  KeypadButton.swift
//  kiosk-keypad
//
//  Created by Sarah Munguia on 2/18/24.
//

import SwiftUI

struct KeypadButton: View {
    var symbol: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(symbol)
                .font(.title)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .background(Color.gray.opacity(0.5)) // Lighten the gray color
                .foregroundColor(.black)
                .clipShape(Circle())
        }
    }
}
