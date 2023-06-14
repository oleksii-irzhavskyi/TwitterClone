//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 17.05.2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            //profile image, info and tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info and tweet
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack{
                        Text("Oleksii Irzhavskyi")
                            .font(.subheadline).bold()
                        
                        Text("@gdezheleha")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //tweet
                    Text("My first tweet")
                        .font(.subheadline).bold()
                        .multilineTextAlignment(.leading)
                }
            }
            
            //action buttons
            HStack {
                Button {
                    //action
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
