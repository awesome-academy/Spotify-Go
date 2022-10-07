//
//  NetWork.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/6/22.
//

import Foundation

struct Network {
    static let shared = Network()
    private init () {}

    private let baseUrl = "https://accounts.spotify.com/authorize?"
    
    func getAuthUrl() -> String {
        let url = baseUrl +
            "client_id=\(APIKey.clientID.rawValue)" +
            "&scope=\(APIKey.firstScope.rawValue + APIKey.lastScope.rawValue)" +
            "&redirect_uri=\(APIKey.redirectURL.rawValue)" + "&response_type=code"
        return url
    }
}

enum CustomError: Error {
    case notFoundToken
    case urlNotFound
    case URLError
    case HTTPError
}

