//
//  AuthViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import Foundation
import RxCocoa
import RxSwift

struct AuthViewModel {
    let navigator: AuthNavigatorType
    let useCase: AuthUseCaseType
}

extension AuthViewModel: ViewModelType {
    struct Input {
        let getAccessTokenTrigger: Driver<String>
    }
    struct Output {
        let navigateToTabbar: Driver<Void>
    }

    func transform(input: Input, disposeBag: DisposeBag) -> Output {
        let navigateToTabbar = input.getAccessTokenTrigger
            .withLatestFrom(input.getAccessTokenTrigger)
            .flatMapLatest { spotifyCode in
                return self.useCase.getAccessToken(spotifyCode: spotifyCode).asDriverOnErrorJustComplete()
            }
            .do(onNext: { _ in
                self.navigator.toMainTabbar()
            })
            .mapToVoid()
        return Output(navigateToTabbar: navigateToTabbar)
    }
}
