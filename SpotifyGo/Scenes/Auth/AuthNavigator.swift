//
//  AuthNavigator.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/6/22.
//

import UIKit

protocol AuthNavigatorType {
    func toMainTabbar()
}

struct AuthNavigator: AuthNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController

    func toMainTabbar() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let vc: TabbarViewController = appDelegate.assembler.resolve(navigationController: navigationController)
        navigationController.setViewControllers([vc], animated: false)
    }
}
