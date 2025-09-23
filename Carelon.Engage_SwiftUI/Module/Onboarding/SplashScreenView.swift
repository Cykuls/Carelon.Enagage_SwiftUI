//
//  SplashScreenView.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 24/09/25.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
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
        }// VStack
        .ignoresSafeArea()
    }
}

#Preview {
    SplashScreenView()
}
