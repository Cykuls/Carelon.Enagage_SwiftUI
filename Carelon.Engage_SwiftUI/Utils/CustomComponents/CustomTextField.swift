//
//  CustomTextField.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 24/09/25.
//

import SwiftUI

// MARK: - CustomTextField
struct CustomTextField: View {
    let label: String
    let placeholder: String
    @Binding var text: String
    var icon: String? = nil
    var isSecure: Bool = false
    var keyBoardType: UIKeyboardType = .default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Top Label
            Text(label)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color.black.opacity(0.8))
            
            HStack {
                if isSecure {
                    SecureField("", text: $text, prompt: Text(placeholder).foregroundColor(.black))
                        .font(.body)
                        .padding(.vertical, 12)
                } else {
                    TextField(placeholder, text: $text)
                                            .font(.body)
                                            .foregroundColor(.black)
                                            .placeholder(when: text.isEmpty) {
                                                Text(placeholder)
                                                    .foregroundColor(.black.opacity(0.6))
                                            }
                                            .padding(.vertical, 12)
                                            .keyboardType(keyBoardType)
                }
                
                if let icon = icon {
                    Image(systemName: icon)
                        .foregroundColor(.gray)
                }
            }
            .padding(.horizontal)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white)
                    )
            )
        }
        .padding(.horizontal, 4)
    }
}



#Preview {
    CustomTextField(label: "Name", placeholder: "Enter your name", text: .constant(""))
}
