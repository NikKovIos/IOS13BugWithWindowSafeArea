//
//  WindowsCoordinator.swift
//  BugWithWindowSafeArea
//
//  Created by Nik Kov on 24/09/2019.
//  Copyright © 2019 FormaCar. All rights reserved.
//

import UIKit

class WindowsCoordinator {
    public static let shared = WindowsCoordinator()
    init() {}

    fileprivate let appDelegate = UIApplication.shared.delegate as! AppDelegate
    fileprivate let landscapeWindow = UIWindow(frame: UIScreen.main.bounds)
    fileprivate var portraitWindow: UIWindow { return appDelegate.window! }

    func showLandscape() {
        OrientationService.updateOrientation(.landscape)
        let landscapeVC = LandscapeViewController()
        landscapeWindow.rootViewController = landscapeVC
        portraitWindow.isHidden = true
        landscapeWindow.makeKeyAndVisible()
    }

    func showPortrait() {
        OrientationService.updateOrientation(.portrait)
        landscapeWindow.isHidden = true
        landscapeWindow.rootViewController = nil
        portraitWindow.isHidden = false
        portraitWindow.makeKeyAndVisible()
    }
}
