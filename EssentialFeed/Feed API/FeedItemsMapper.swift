//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Wiljay Flores on 2023-08-15.
//

import Foundation

final class FeedItemsMapper {

    private struct Root: Decodable {
        let items: [FeedItemAPI]
    }

    private struct FeedItemAPI: Decodable {
        let id: UUID
        let description: String?
        let location: String?
        let image: URL
        
        var item: FeedItem {
            return FeedItem(
                id: id,
                description: description,
                location: location,
                imageURL: image
            )
        }
    }
    
    private static var OK_200: Int { return 200 }
    
    static func map(_ data: Data,_ response: HTTPURLResponse) throws -> [FeedItem] {
        guard response.statusCode == OK_200 else {
            throw RemoteFeedLoader.Error.invalidData
        }
        return try JSONDecoder().decode(Root.self, from: data)
            .items.map { $0.item }
    }
}
