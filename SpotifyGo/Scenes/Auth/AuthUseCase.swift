//
//  AuthUseCase.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/6/22.
//

import UIKit
import RxSwift
import WebKit

protocol AuthUseCaseType {
    func  getAccessToken(spotifyCode: String) -> Observable<String>
}

struct AuthUseCase: AuthUseCaseType {
    let apiRepo = APIRepository()
    func getAccessToken(spotifyCode: String) -> Observable<String> {
        return apiRepo.getAccessToken(code: spotifyCode)
    }
}
