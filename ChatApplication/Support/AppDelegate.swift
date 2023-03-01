//
//  AppDelegate.swift
//  ChatApplication
//
//  Created by Ivan Puzanov on 28.02.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = UINavigationController(rootViewController: ChatVC())
        window?.makeKeyAndVisible()
        
        return true
    }
}

