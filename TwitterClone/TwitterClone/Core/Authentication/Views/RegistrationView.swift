//
//  RegistrationView.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 14.06.2023.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get started", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputeField(imageName: "envelope",
                                  placeholderText: "Email",
                                  text: $email)
                
                CustomInputeField(imageName: "person",
                                  placeholderText: "Username",
                                  text: $username)
                
                CustomInputeField(imageName: "person",
                                  placeholderText: "Full name",
                                  text: $fullname)
                
                CustomInputeField(imageName: "lock",
                                  placeholderText: "Password",
                                  text: $password)
            }
            .padding(32)
            
            Button {
                print("Sign")
            } label: {
                Text("Sign up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))
        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
