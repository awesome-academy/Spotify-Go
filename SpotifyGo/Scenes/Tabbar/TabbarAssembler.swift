//
//  TabbarAssembler.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/30/22.
//

import UIKit

protocol TabbarAssembler {
    func resolve(navigationController: UINavigationController) -> TabbarViewController
    func resolve(navigationController: UINavigationController) -> TabbarViewModel
    func resolve(navigationController: UINavigationController) -> TabbarNavigatorType
    func resolve() -> TabbarUseCaseType
}

extension TabbarAssembler {
    func resolve(navigationController: UINavigationController) -> TabbarViewController {
        let tabbar = TabbarViewController()
        let navigator: TabbarNavigatorType = resolve(navigationController: navigationController)
        let HomeNav = UINavigationController()
        HomeNav.tabBarItem = TabbarItem.home.item
        navigator.loadHome(navigationController: HomeNav)

        let searchNav = UINavigationController()
        searchNav.tabBarItem = TabbarItem.search.item
        navigator.loadSearch(navigationController: searchNav)

        let libraryNav = UINavigationController()
        libraryNav.tabBarItem = TabbarItem.library.item
        navigator.loadLibrary(navigationController: libraryNav)
        
        tabbar.viewControllers = [HomeNav, searchNav, libraryNav]
        return tabbar
    }

    func resolve(navigationController: UINavigationController) -> TabbarViewModel {
        
        return TabbarViewModel(navigator: resolve(navigationController: navigationController),
                               usecase: resolve())
    }
}

extension TabbarAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> TabbarNavigatorType {
        return TabbarNavigator(assembler: self, tabbarController: TabbarViewController())
    }

    func resolve() -> TabbarUseCaseType {
        return TabbarseCase()
    }
}
