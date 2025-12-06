//
//  NetworkError.swift
//  Nimbus
//
//  Created by Sedef Bozkurt on 6.12.2025.
//

import Foundation

enum NetworkError: Error, LocalizedError {
    case invalidURL
    case noData
    case decodingFailed
    case serverError(statusCode: Int)
    case underlying(Error)
    
    var errorDescription: String? {
        switch self {
        case .invalidURL: return "Invalid URL"
        case .noData: return "No data received from server"
        case .decodingFailed: return "Failed to decode response"
        case .serverError( let code): return "Server returned status \(code)"
        case .underlying(let err): return err.localizedDescription
        }
    }
}
