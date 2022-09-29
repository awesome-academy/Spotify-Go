//
//  AppDelegate.swift
//  SpotifyGo
//
//  Created by Huy Hà on 9/29/22.
//

import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate,  UIWindowSceneDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
