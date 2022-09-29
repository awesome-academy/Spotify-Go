//
//  AppViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/3/22.
//

import RxSwift
import RxCocoa
import UIKit

struct AppViewModel {
    let navigator: AppNavigatorType
    let useCase: AppUseCaseType
}

extension AppViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }

    struct Output {
    }

    func transform(input: AppViewModel.Input, disposeBag: DisposeBag) -> Output {
        let toMain = input.loadTrigger
            .drive(onNext: self.navigator.toMain)
            .disposed(by: disposeBag)
        return Output()
    }
}
