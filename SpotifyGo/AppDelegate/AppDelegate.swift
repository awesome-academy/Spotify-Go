//
//  AppDelegate.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit
import RxSwift
import RxCocoa

@main
final class AppDelegate: UIResponder, UIApplicationDelegate, UIWindowSceneDelegate {

    var window: UIWindow?
    let assembler: Assembler = DefaultAssembler()
    private let disposeBag = DisposeBag()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        bindViewModel(window: window)
        return true
    }
}

extension AppDelegate {
    func bindViewModel(window: UIWindow) {
        let vm: AppViewModel = assembler.resolve(window: window)
        let input = AppViewModel.Input(loadTrigger: Driver.just(()))
        _ = vm.transform(input: input, disposeBag: disposeBag)
    }
}
