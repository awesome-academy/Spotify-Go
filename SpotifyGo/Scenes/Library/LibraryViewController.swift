//
//  LibraryViewController.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit
import RxSwift

final class LibraryViewController: UIViewController {
    
    var viewModel: LibraryViewModel!
    var disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
extension LibraryViewController: Bindable {
    func bindViewModel() {
    }
}
