//
//  UITextField+.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit
extension UITextField {
    func addUnderLine () {
            let bottomLine = CALayer()
            
            bottomLine.frame = CGRect(x: 0.0, y: self.bounds.height + 3, width: self.bounds.width, height: 1.5)
            bottomLine.backgroundColor = UIColor.lightGray.cgColor
            
            self.borderStyle = UITextField.BorderStyle.none
            self.layer.addSublayer(bottomLine)
        }
}
