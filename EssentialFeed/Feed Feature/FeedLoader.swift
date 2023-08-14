//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Wiljay Flores on 2023-08-14.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
