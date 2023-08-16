//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Wiljay Flores on 2023-08-14.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
