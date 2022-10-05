//
//  HomeViewController.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit
import RxSwift

final class HomeViewController: UIViewController {

    var viewModel: HomeViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: Bindable {
    func bindViewModel() {
    }
}

