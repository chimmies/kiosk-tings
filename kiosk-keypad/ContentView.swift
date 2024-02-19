//
//  ContentView.swift
//  kiosk-keypad
//
//  Created by Sarah Munguia on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = KeypadViewModel()

    var body: some View {
        GeometryReader { geometry in
            VStack {
                DisplayView(input: $viewModel.input)
                    .frame(height: geometry.size.height * 0.4)
                KeypadView(viewModel: viewModel, size: geometry.size)
                    .frame(height: geometry.size.height * 0.4)
                Spacer()
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
