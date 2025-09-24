//
//  Router.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import SwiftUI

// MARK: - Router
struct Router: View {
    @StateObject  private var appState = AppState()
    
    var body: some View {
        switch appState.currentScreen {
        case .splash:
            SplashScreenView()
            
        case .home:
            EmptyView()
            
        case .login:
            LoginView()
        }
    }
}

#Preview {
    Router()
}
