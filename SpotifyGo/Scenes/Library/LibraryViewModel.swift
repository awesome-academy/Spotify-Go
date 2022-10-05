//
//  LibraryViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import Foundation
import RxSwift

struct LibraryViewModel {
    let navigator: LibraryNavigatorType
    let useCase: LibraryUseCaseType
}

extension LibraryViewModel: ViewModelType {
    struct Input {

    }
    struct Output {

    }

    func transform(input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
