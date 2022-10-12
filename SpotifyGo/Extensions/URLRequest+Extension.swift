//
//  URLRequest+Extension.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/10/22.
//

import UIKit

extension URLRequest {
    func queryString (after key: String) -> String? {
        guard let requestURLString = (self.url?.absoluteString),
              let range = requestURLString.range(of: key) else { return nil }
        let code = requestURLString[range.upperBound...]
        return String(code)
    }
}
