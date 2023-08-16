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
        checkIfUserRepliedTweet()
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
    
    func replieTweet() {
        service.replieTweet(tweet) {
            self.tweet.didReplie = true
        }
    }
    
    func unreplieTweet() {
        service.unreplieTweet(tweet) {
            self.tweet.didReplie = false
        }
    }
    
    func checkIfUserRepliedTweet() {
        service.checkIfUserRepliedTweet(tweet) { didReplie in
            if didReplie {
                self.tweet.didReplie = true
            }
        }
    }
}
