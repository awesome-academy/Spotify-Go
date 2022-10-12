//
//  ApiRepository.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/6/22.
//

import Foundation
import Alamofire
import RxSwift

protocol APIRepositoryType {
    func getAccessToken(code: String) -> Observable<String>
}
final class APIRepository {
    func getAccessToken(code: String) -> Observable<String> {
        return Observable.create { observable  in
            let baseURL = "https://accounts.spotify.com/api/token"
            let header: HTTPHeaders = ["Content-Type": "application/x-www-form-urlencoded"]
            let parameters = [
                "grant_type": "authorization_code",
                "code": code,
                "redirect_uri": APIKey.redirectURL.rawValue,
                "client_id": APIKey.clientID.rawValue,
                "client_secret": APIKey.clientSecret.rawValue
            ]
            let encoder = URLEncodedFormParameterEncoder(encoder: URLEncodedFormEncoder(spaceEncoding: .percentEscaped))
            AF.request(baseURL,
                       method: .post,
                       parameters: parameters,
                       encoder: encoder,
                       headers: header)
                .responseDecodable(of: AuthKey.self) { response in
                    switch response.result {
                    case .success(let value):
                        UserDefaults.standard.setValue(value.accessToken, forKey: "token")
                        observable.onNext(value.accessToken)
                        observable.onCompleted()
                    case .failure:
                        observable.onError(CustomError.HTTPError)
                    }
                }
            return Disposables.create()
        }
    }
}
