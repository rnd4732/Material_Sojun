//
//  AppDelegate.swift
//  Material
//
//  Created by Wonkyoung on 2017. 1. 3..
//  Copyright © 2017년 Wonkyoung. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .darkGray
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = ColorListViewController()
        
        let colorListViewController = ColorListViewController()
        let navigationController = UINavigationController(
            rootViewController: colorListViewController
        )
        self.window?.rootViewController = navigationController
        return true
    }
}

