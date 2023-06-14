//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 01.06.2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading) {
                Text("gdezheleha")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Oleksii Irzhavskyi")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
