//
//  OrientationService.swift
//  FormaCar
//
//  Created by Nik Kov on 11.10.17.
//  Copyright © 2017 Forma Car. All rights reserved.
//

import UIKit

struct OrientationService {
    /// Находится ли сейчас устройство в режиме lanscape
    static var isLandscape: Bool {
        let currentOrientation = UIApplication.shared.statusBarOrientation
        switch currentOrientation {
        case .landscapeLeft,
             .landscapeRight:
            return true
        default:
            return false
        }
    }
    
    /// Изменяет текущую ориентацию экрана
    static func changeOrientation(_ orientation: UIInterfaceOrientationMask) {
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
    /// Устанавливает доступные ориентации для главного window приложения
    static func setAppOrientation(_ orientation: UIInterfaceOrientationMask) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.orientation = orientation
    }
    
    /// Метод для удобства обновления ориентации
    static func updateOrientation(_ orientation: UIInterfaceOrientationMask) {
        changeOrientation(orientation)
        setAppOrientation(orientation)
    }
}
