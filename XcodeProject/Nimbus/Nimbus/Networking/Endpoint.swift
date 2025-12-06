//
//  Endpoint.swift
//  Nimbus
//
//  Created by Sedef Bozkurt on 6.12.2025.
//

import Foundation

enum Endpoint {
    case currentByCity(name: String)
    case currentByCoordinates(lat: Double, lon: Double)
    
    // Base path for current weather
    private var path: String {"/data/2.5/weather"}
    
    // Query items (without API key / units - DefaultNetworkService tarafından eklenecek)
    var queryItems: [URLQueryItem] {
        switch self {
        case .currentByCity(name: let name):
            return [URLQueryItem(name: "q", value: name)]
        case .currentByCoordinates(let lat, let lon):
            return [
                URLQueryItem(name: "lat", value: String(lat)),
                URLQueryItem(name: "lon", value: String(lon))
            ]
        }
    }
    
    // Path accessor for use in URLComponents
    var pathComponent: String {path}
}
