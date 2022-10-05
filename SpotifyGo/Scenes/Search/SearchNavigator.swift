//
//  SearchViewNavigator.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/5/22.
//

import UIKit

protocol SearchNavigatorType {
    func toMain()
}

struct SearchNavigator: SearchNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController

    func toMain() {

    }
}
