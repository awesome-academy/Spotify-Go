//
//  TabbarViewModel.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/30/22.
//

import UIKit
import RxCocoa
import RxSwift

struct TabbarViewModel {
    let navigator: TabbarNavigatorType
    let usecase: TabbarUseCaseType
}

extension TabbarViewModel: ViewModelType {
    struct Input {
        let load: Driver<Void>
    }

    struct Output {
        
    }

    func transform(input: Input, disposeBag: DisposeBag) -> Output {
        return Output()
    }
}
