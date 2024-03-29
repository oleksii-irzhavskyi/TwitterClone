//
//  UploadTweetViewModel.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 01.07.2023.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                //dismiss screen
                self.didUploadTweet = true
            } else {
                //show error message
                
            }
        }
    }
}
