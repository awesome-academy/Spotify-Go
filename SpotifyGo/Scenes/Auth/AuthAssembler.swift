//
//  AuthAssembler.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/6/22.
//

import UIKit

protocol AuthAssembler {
    func resolve(navigationController: UINavigationController) -> AuthViewController
    func resolve(navigationController: UINavigationController) -> AuthViewModel
    func resolve(navigationController: UINavigationController) -> AuthNavigatorType
    func resolve() -> AuthUseCaseType
}

extension AuthAssembler {
    func resolve(navigationController: UINavigationController) -> AuthViewController {
        let vc = AuthViewController()
        let vm: AuthViewModel = resolve(navigationController: navigationController)
        vc.bindViewModel(to: vm)
        return vc
    }

    func resolve(navigationController: UINavigationController) -> AuthViewModel {
        return AuthViewModel(
            navigator: resolve(navigationController: navigationController),
            useCase: resolve()
        )
    }
}

extension AuthAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> AuthNavigatorType {
        return AuthNavigator(assembler: self, navigationController: navigationController)
    }

    func resolve() -> AuthUseCaseType {
        return AuthUseCase()
    }
}
