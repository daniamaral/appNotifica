//
//  UIColor+.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

extension UIColor{
    
    static var viewBackGroundColor: UIColor {
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var buttonBackGroundColor: UIColor {
        UIColor(named: "buttonBackGroundColor") ?? UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1)
    }
    
    static var textBackGroundColor: UIColor {
        UIColor(named: "textBackGroundColor") ?? .black
    }
    
    static var placeholderText: UIColor {
        UIColor(named: "placeholderText") ?? .black
    }
    
}
