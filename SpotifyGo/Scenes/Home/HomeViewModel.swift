//
//  HomeViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import RxSwift
import RxCocoa
import UIKit

struct HomeViewModel {
    let navigator: HomeNavigatorType
    let useCase: HomeUseCaseType
}

extension HomeViewModel: ViewModelType {
    struct Input {

    }
    struct Output {

    }

    func transform(input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
