//
//  KeypadViewModel.swift
//  kiosk-keypad
//
//  Created by Sarah Munguia on 2/18/24.
//

import Foundation

class KeypadViewModel: ObservableObject {
    @Published var input: String = ""

    let keypadButtons: [[KeypadButtonModel]] = [
        [.init(id: "1", label: "1"), .init(id: "2", label: "2"), .init(id: "3", label: "3")],
        [.init(id: "4", label: "4"), .init(id: "5", label: "5"), .init(id: "6", label: "6")],
        [.init(id: "7", label: "7"), .init(id: "8", label: "8"), .init(id: "9", label: "9")],
        [.init(id: "dot", label: "."), .init(id: "0", label: "0"), .init(id: "backspace", label: "🔙")]
    ]

    func processInput(_ button: KeypadButtonModel) {
        switch button.id {
        case "0"..."9":
            input += button.label
        case "dot":
            if !input.contains(".") {
                input += button.label
            }
        case "backspace":
            if !input.isEmpty {
                input.removeLast()
            }
        default:
            break
        }
    }
}
