//
//  DisplayView.swift
//  kiosk-keypad
//
//  Created by Sarah Munguia on 2/18/24.
//

import SwiftUI

struct DisplayView: View {
    @Binding var input: String

    var body: some View {
        HStack {
            Spacer() // Push content to center
            Text("$\(input)")
                .font(.largeTitle)
                .foregroundColor(.black)
            Spacer() // Push content to center
        }
        .padding(.vertical) // Add vertical padding
        .frame(maxWidth: .infinity) // Ensure it takes the full width available
        .background(Color.white) // Set the background to white
    }
}
