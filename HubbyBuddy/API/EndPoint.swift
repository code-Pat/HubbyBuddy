//
//  EndPoint.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/02.
//

import Foundation

enum Method: String {
    case GET
    case POST
    case PUT
    case DELETE
}

enum APIError {
    case error
    case noData
    case responseError
}

enum EndPoint {
    case signup
    case login
    
}

extension URL {
    static let baseURL = "https://test.monocoding.com:35484/"
    
    static func makeEndPoint(_ endpoint: String) -> URL {
        URL(string: baseURL + endpoint)!
    }
}

extension EndPoint {
    var url: URL {
        switch self {
        case .signup: return .makeEndPoint("user")
        case .login: return .makeEndPoint("user")
        }
    }
}
