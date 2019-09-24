//
//  AppDelegate.swift
//  BugWithWindowSafeArea
//
//  Created by Nik Kov on 24/09/2019.
//  Copyright © 2019 FormaCar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var orientation: UIInterfaceOrientationMask = .portrait

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Portrait", bundle: nil).instantiateInitialViewController()
        window?.makeKeyAndVisible()
        OrientationService.changeOrientation(.portrait)
        return true
    }

    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return orientation
    }
}
