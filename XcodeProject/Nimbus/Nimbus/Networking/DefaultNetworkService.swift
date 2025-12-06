//
//  DefaultNetworkService.swift
//  Nimbus
//
//  Created by Sedef Bozkurt on 6.12.2025.
//

import Foundation

final class DefaultNetworkService: NetworkService {
    
    private let host = "api.openweathermap.org"
    private let scheme = "https"
    
    private var apiKey: String {
        Bundle.main.infoDictionary?["API_KEY"] as? String ?? ""
    }
    
    func fetch<T: Decodable>(_ type: T.Type, from endpoint: Endpoint) async throws -> T {
        // Build URL components
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = endpoint.pathComponent
        
        // Start wirh endpoint-provided query items
        var items = endpoint.queryItems
        
        // Add units and api key
        items.append(URLQueryItem(name: "units", value: "metric"))
        items.append(URLQueryItem(name: "appid", value: apiKey))
        
        components.queryItems = items
        
        guard let url = components.url else {
            throw NetworkError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.timeoutInterval = 13
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            
            if let httpResponse = response as? HTTPURLResponse,
               !(200...299).contains(httpResponse.statusCode) {
                throw NetworkError.serverError(statusCode: httpResponse.statusCode)
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let decoded = try decoder.decode(T.self, from: data)
                return decoded
            } catch {
                throw NetworkError.decodingFailed
            }
            
        } catch {
            throw NetworkError.underlying(error)
        }
    }
}
