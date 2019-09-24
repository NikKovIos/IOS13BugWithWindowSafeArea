//
//  LandscapeViewController.swift
//  BugWithWindowSafeArea
//
//  Created by Nik Kov on 24/09/2019.
//  Copyright © 2019 FormaCar. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red

        let button = UIButton(type: .system)
        button.setTitle("Back to Portrait", for: .normal)
        button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.setTitleColor(.white, for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc
    func didTap() {
        WindowsCoordinator.shared.showPortrait()
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
}
