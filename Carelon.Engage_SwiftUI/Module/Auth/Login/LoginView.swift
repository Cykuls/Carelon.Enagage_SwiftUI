//
//  LoginView.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 24/09/25.
//

import SwiftUI

struct LoginView: View {
    @State private var country = ""
    @State private var phoneNumber = ""
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text(Constants.appName)
                        .font(Font.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.init(uiColor: .appPurple))
                    
                    Text(Constants.loginTitle)
                        .font(Font.footnote)
                        .fontWeight(.light)
                }
                .padding(.top)
                .padding(.bottom, 50)
                
                CustomTextField(label: "Country", placeholder: "Select your country",text: $country, icon: "chevron.down")
                    .textContentType(.none)
                    .autocorrectionDisabled(true)
                    .autocapitalization(.none)
                    .padding()
                
                CustomTextField(label: "Phone Number", placeholder: "Enter your phone number",text: $phoneNumber, icon: "phone.fill", keyBoardType: .numberPad)
                    .textContentType(.none)
                    .autocorrectionDisabled(true)
                    .autocapitalization(.none)
                    .padding()
                
                Spacer()
                
                CustomButton(title: "Proceed", icon: "arrow.right", backgroundColor: Color.init(.appPurple), cornerRadius: 30, action: {
                    print("Proceed button clicked")
                })
                .padding()
            }
            .withDoneButton()
            .background(.white)
            .preventScreenshot()
        }
    }
}

#Preview {
    LoginView()
}
