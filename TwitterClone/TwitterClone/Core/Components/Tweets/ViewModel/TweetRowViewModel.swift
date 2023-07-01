//
//  TweetRowViewModel.swift
//  TwitterClone
//
//  Created by Oleksii Irzhavskyi on 01.07.2023.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    @Published var tweet: Tweet
    private var service =  TweetService()
    
    init(tweet: Tweet) {
        self.tweet = tweet
        checkIfUserLikedTweet()
    }
    
    
    func likeTweet() {
        service.likeTweet(tweet) {
            self.tweet.didLike = true
        }
    }
    
    func unlikeTweet() {
        service.unlikeTweet(tweet) {
            self.tweet.didLike = false
        }
    }
    
    func checkIfUserLikedTweet() {
        service.checkIfUserLikedTweet(tweet) { didLike in
            if didLike {
                self.tweet.didLike = true
            }
        }
    }
}
