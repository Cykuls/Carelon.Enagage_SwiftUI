//
//  CustomButton.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 24/09/25.
//

import SwiftUI

// MARK: - CustomButton
struct CustomButton: View {
    var title: String
    var icon: String? = nil
    var backgroundColor: Color = Color.purple
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 10
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text(title)
                    .fontWeight(.bold)
                
                if let icon = icon {
                    Image(systemName: icon)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius)
        }
    }
}

// MARK: - Preview
#Preview {
    CustomButton(title: "Title", icon: "arrow.right", backgroundColor: Color.purple, foregroundColor: Color.white, cornerRadius: 10) {
        print("")
    }
}
