//
//  Enums.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import Foundation

// MARK: - HTTP Methods Enums
enum HTTPMethod: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
    case UPDATE = "UPDATE"
}

// MARK: - Network Error
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingFailed(Error)
    case httpError(code: Int, message: String)
    case invalidResponse
    case noInternet
    case timeout
    case networkError(Error)
    case invalidParameters
}

// MARK: - Body Types
enum BodyType {
    case json
    case formURLEncoded
    case multipart(boundary: String?, media: [Media]?)
}
