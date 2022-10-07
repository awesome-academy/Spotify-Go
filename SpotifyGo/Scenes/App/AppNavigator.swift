//
//  AppNavigator.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/3/22.
//

import UIKit

protocol AppNavigatorType {
    func toMain()
}

struct AppNavigator: AppNavigatorType {
    unowned let assembler: Assembler
    unowned let window: UIWindow

    func toMain() {
        let nav = UINavigationController()
        guard UserDefaults.standard.string(forKey: "token") != nil else {
            let authView: AuthViewController = assembler.resolve(navigationController: nav)
            nav.setViewControllers([authView], animated: false)
            window.rootViewController = nav
            window.makeKeyAndVisible()
            return
        }
        let tabbar: TabbarViewController = assembler.resolve(navigationController: nav)
        nav.setViewControllers([tabbar], animated: false)
        window.rootViewController = nav
        window.makeKeyAndVisible()
    }
}

