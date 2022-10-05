//
//  SearchViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import RxSwift
import RxCocoa
import UIKit

struct SearchViewModel {
    let navigator: SearchNavigatorType
    let useCase: SearchUseCaseType
}

extension SearchViewModel: ViewModelType {
    struct Input {

    }
    struct Output {

    }

    func transform(input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
