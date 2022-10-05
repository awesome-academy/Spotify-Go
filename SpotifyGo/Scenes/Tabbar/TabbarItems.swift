//
//  TabbarItems.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/4/22.
//

import UIKit

enum TabbarItem {
    case home
    case search
    case library

    var item: UITabBarItem {
        switch self {
        case .home:
            return UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        case .search:
            return UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass.circle" ), tag: 1)
        case .library:
            return UITabBarItem(title: "Your Library", image: UIImage(systemName: "music.note.list"), tag: 1)
        }
    }
}
