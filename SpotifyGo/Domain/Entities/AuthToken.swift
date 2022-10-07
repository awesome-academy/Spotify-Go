//
//  AuthKey.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/7/22.
//

import Foundation
import ObjectMapper

struct AuthToken {
    var accessToken: String
    var refreshToken: String
    var scope: String
}
extension AuthToken {
    init() {
        self.init(accessToken: "", refreshToken: "", scope: "")
    }
}
extension AuthToken: Mappable {
    init?(map: Map) {
        self.init()
    }

    mutating func mapping(map: Map) {
        accessToken <- map["accessToken"]
        refreshToken <- map["refreshToken"]
        scope <- map["scope"]
    }
}
