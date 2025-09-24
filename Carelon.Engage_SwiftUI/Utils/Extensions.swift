//
//  Extensions.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import Foundation
import SwiftUI

extension Data {
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            self.append(data)
        }
    }
}

extension UIColor {
    /// Hex: #590DBD
    static let appPurple: UIColor = UIColor(
        red: CGFloat(0x59) / 255.0,
        green: CGFloat(0x0D) / 255.0,
        blue: CGFloat(0xBD) / 255.0,
        alpha: 1.0
    )
}

extension View {
    @ViewBuilder func preventScreenshot(_ shouldPrevent: Bool = true) -> some View {
        if shouldPrevent {
            ScreenshotPreventView { self }
        } else {
            self
        }
    }
    
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    // Modifier to add a Done button on keyboard
    func withDoneButton() -> some View {
        self.toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    hideKeyboard()
                }
            }
        }
    }
    
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        
        ZStack(alignment: alignment) {
            if shouldShow {
                placeholder()
            }
            self
        }
    }
}
