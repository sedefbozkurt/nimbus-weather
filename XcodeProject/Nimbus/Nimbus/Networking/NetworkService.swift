//
//  NetworkService.swift
//  Nimbus
//
//  Created by Sedef Bozkurt on 6.12.2025.
//

import Foundation

protocol NetworkService {
    func fetch<T: Decodable>(_ type: T.Type, from endpoint: Endpoint) async throws -> T
}
