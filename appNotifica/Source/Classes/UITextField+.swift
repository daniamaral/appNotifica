//
//  UITextField+.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit
extension UITextField {
    
}

class UnderlinedTextField: UITextField{
    let underlineLayer = CALayer()
    
    /// Size the underline layer and position it as a one point line under the text field.
        func setupUnderlineLayer() {
            var frame = self.bounds
            frame.origin.y = frame.size.height - 1
            frame.size.height = 1

            underlineLayer.frame = frame
            underlineLayer.backgroundColor = UIColor.lightGray.cgColor
        }

        // In `init?(coder:)` Add our underlineLayer as a sublayer of the view's main layer
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.layer.addSublayer(underlineLayer)
        }

        // in `init(frame:)` Add our underlineLayer as a sublayer of the view's main layer
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.layer.addSublayer(underlineLayer)
        }

        // Any time we are asked to update our subviews,
        // adjust the size and placement of the underline layer too
        override func layoutSubviews() {
            super.layoutSubviews()
            setupUnderlineLayer()
        }
    
}
