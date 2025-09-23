//
//  Extensions.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import Foundation
import UIKit

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
