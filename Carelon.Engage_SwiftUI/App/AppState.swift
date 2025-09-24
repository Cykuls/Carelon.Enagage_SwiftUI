//
//  AppState.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 12/09/25.
//

import Foundation
import SwiftUI

// MARK: - AppState
class AppState: ObservableObject {
    @Published var currentScreen: AppScreen = .splash
    
    init() {
        // Always start at splash
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let loggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
            self.currentScreen = loggedIn ? .home : .login
        }
    }
}
