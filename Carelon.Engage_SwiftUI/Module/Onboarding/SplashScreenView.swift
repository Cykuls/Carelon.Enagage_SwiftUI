//
//  SplashScreenView.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 24/09/25.
//

import SwiftUI

// MARK: - SplashScreen View
struct SplashScreenView: View {
    var body: some View {
        // MARK: - Main VStack
        VStack {
            
            // MARK: - Upper ZStack
            ZStack {
                Rectangle()
                    .fill(Color.white)
                
                VStack {
                    Image("CarelonLogo")
                        .resizable()
                        .frame(width: 90, height: 90)
                    
                    Text("carelon")
                        .font(Font.largeTitle.bold())
                        .foregroundStyle(Color.init(uiColor: .appPurple))
                }
            }
            
            // MARK: - Lower ZStack
            ZStack {
                Rectangle()
                    .fill(Color.init(uiColor: .appPurple))
                
                VStack {
                    Text(".engage")
                        .font(Font.largeTitle.bold())
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    Text("Powered by \n  LifeCykul")
                        .font(Font.title3)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
            }
        }
        .background(Color.white)
        .ignoresSafeArea()
    }
}

#Preview {
    SplashScreenView()
}
