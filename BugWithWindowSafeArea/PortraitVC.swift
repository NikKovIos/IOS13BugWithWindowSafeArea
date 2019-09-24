//
//  ViewController.swift
//  BugWithWindowSafeArea
//
//  Created by Nik Kov on 24/09/2019.
//  Copyright © 2019 FormaCar. All rights reserved.
//

import UIKit

class PortraitVC: UIViewController {
    @IBAction func didPressToLandscape(_ sender: UIButton) {
        WindowsCoordinator.shared.showLandscape()
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}
