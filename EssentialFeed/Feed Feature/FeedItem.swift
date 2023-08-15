//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Wiljay Flores on 2023-08-14.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
