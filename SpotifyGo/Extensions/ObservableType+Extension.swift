//
//  ObservableType+Extension.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/10/22.
//

import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
    public func asDriverOnErrorJustComplete() -> Driver<Element> {
        return asDriver { _ in
            return Driver.empty()
        }
    }
}
