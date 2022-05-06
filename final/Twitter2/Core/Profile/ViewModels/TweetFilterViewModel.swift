//
//  TweetFileViewModel.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/4/29.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self {
            case .tweets: return "Tweets"
            case .replies: return "Replies"
            case .likes: return "Likes"
            }
    }
}
