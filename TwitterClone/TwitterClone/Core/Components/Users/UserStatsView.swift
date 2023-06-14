//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 01.06.2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack {
                Text("228")
                    .font(.subheadline)
                    .bold()
                
                Text("following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("1488")
                    .font(.subheadline)
                    .bold()
                
                Text("followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
