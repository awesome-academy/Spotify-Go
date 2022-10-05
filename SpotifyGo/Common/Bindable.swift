//
//  Bindable.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/4/22.
//

import Foundation
import UIKit

public protocol Bindable: AnyObject {

    associatedtype ViewModel

    var viewModel: Self.ViewModel! { get set }

    func bindViewModel()
}

extension Bindable where Self: UIViewController {

    public func bindViewModel(to model: Self.ViewModel) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}

extension Bindable where Self: UITabBarController {
    public func bindViewModel(to model: Self.ViewModel) {
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}
