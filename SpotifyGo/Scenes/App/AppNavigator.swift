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
        let tabbar: TabbarViewController = assembler.resolve(navigationController: nav)
        tabbar.view.backgroundColor = .red
        window.rootViewController = tabbar
        window.makeKeyAndVisible()
    }
}

