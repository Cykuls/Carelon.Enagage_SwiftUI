//
//  Extensions.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import Foundation

extension Data {
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            self.append(data)
        }
    }
}
