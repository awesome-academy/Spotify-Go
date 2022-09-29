//
//  LibraryViewNavigator.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/5/22.
//

import UIKit

protocol LibraryNavigatorType {
    func toMain()
}

struct LibraryNavigator: LibraryNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController

    func toMain() {

    }
}
