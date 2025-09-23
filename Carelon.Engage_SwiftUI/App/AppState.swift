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
    @Published var isLoggedIn: Bool = false
    @Published var showSplashScreen: Bool = true
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.showSplashScreen = false
        }
        
        isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
}
