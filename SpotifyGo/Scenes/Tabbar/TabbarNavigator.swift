//
//  TabbarNavigator.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/30/22.
//

import UIKit

protocol TabbarNavigatorType {
    func loadHome(navigationController: UINavigationController)
    func loadSearch(navigationController: UINavigationController)
    func loadLibrary(navigationController: UINavigationController)
}

struct TabbarNavigator: TabbarNavigatorType {

    unowned let assembler: Assembler
    unowned let tabbarController: TabbarViewController

    func loadHome(navigationController: UINavigationController) {
        let vc: HomeViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: false)
    }

    func loadSearch(navigationController: UINavigationController) {
        let vc: SearchViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: false)
    }

    func loadLibrary(navigationController: UINavigationController) {
        let vc: LibraryViewController = assembler.resolve(navigationController: navigationController)
        navigationController.pushViewController(vc, animated: false)
    }
}
