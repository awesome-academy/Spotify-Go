//
//  SharedSequenceConvertibleType+Extension.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/10/22.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

extension SharedSequenceConvertibleType {

    public func mapToVoid() -> SharedSequence<SharingStrategy, Void> {
        return map { _ in }
    }
}
