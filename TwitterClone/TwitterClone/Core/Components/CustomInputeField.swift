//
//  CustomInputeField.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 14.06.2023.
//

import SwiftUI

struct CustomInputeField: View {
    let imageName: String
    let placeholderText: String
    var isSecureField: Bool? = false
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                
                if isSecureField ?? false {
                    SecureField(placeholderText, text: $text)
                }else{
                    TextField(placeholderText, text: $text)
                }
            }
            
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputeField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputeField(imageName: "envelope",
                          placeholderText: "Email",
                          isSecureField: false,
                          text: .constant(""))
    }
}
