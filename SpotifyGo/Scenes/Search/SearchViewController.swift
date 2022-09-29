//
//  SearchViewController.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit
import RxSwift
import RxCocoa

final class SearchViewController: UIViewController {
    var viewModel: SearchViewModel!
    var disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SearchViewController: Bindable {
    func bindViewModel() {
    }
}
