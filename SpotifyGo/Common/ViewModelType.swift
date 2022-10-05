//
//  ViewModelType.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/3/22.
//

import Foundation
import RxSwift

protocol ViewModelType {
    
    associatedtype Input
    associatedtype Output

    func transform(input: Input, disposeBag: DisposeBag) -> Output
}
