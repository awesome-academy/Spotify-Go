//
//  LibraryAssembler.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/5/22.
//

import UIKit

protocol LibraryAssembler {
    func resolve(navigationController: UINavigationController) -> LibraryViewController
    func resolve(navigationController: UINavigationController) -> LibraryViewModel
    func resolve(navigationController: UINavigationController) -> LibraryNavigatorType
    func resolve() -> LibraryUseCaseType
}

extension LibraryAssembler {
    func resolve(navigationController: UINavigationController) -> LibraryViewController {
        let vc = LibraryViewController()
        let vm: LibraryViewModel = resolve(navigationController: navigationController)
        vc.bindViewModel(to: vm)
        return vc
    }

    func resolve(navigationController: UINavigationController) -> LibraryViewModel {
        return LibraryViewModel(
            navigator: resolve(navigationController: navigationController),
            useCase: resolve()
        )
    }
}

extension LibraryAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> LibraryNavigatorType {
        return LibraryNavigator(assembler: self, navigationController: navigationController)
    }

    func resolve() -> LibraryUseCaseType {
        return LibraryUseCase()
    }
}
