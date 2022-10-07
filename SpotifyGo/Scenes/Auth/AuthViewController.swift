//
//  AuthViewController.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit
import RxSwift
import WebKit

final class AuthViewController: UIViewController {

    var viewModel: AuthViewModel!
    var disposeBag = DisposeBag()
    private var apiRepo = APIRepository()
    @IBOutlet private weak var webView: WKWebView!

    let getTokenTrigger = PublishSubject<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        let authURL = Network.shared.getAuthUrl()
        guard let url = URL(string: authURL) else { return }
        webView.load(URLRequest(url: url))
    }
}

extension AuthViewController: Bindable {
    func bindViewModel() {
        let input = AuthViewModel.Input(getAccessTokenTrigger: getTokenTrigger.asDriver(onErrorJustReturn: "Notfound"))
        let output = viewModel.transform(input: input, disposeBag: disposeBag)
        output.navigateToTabbar.drive().disposed(by: disposeBag)
    }
}

extension AuthViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView,
                 decidePolicyFor navigationAction: WKNavigationAction,
                 decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let code = navigationAction.request.queryString(after: APIKey.redirectURL.rawValue + "?code=") {
            getTokenTrigger.onNext(code)
        }
        decisionHandler(.allow)
    }
}

