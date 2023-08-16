//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Wiljay Flores on 2023-08-15.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
