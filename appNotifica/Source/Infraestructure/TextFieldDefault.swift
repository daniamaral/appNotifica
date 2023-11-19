//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField{
    init(text: String) {
        super.init(frame: .zero)
        initTextFieldDefault(text: text)
    }
    
    private func initTextFieldDefault(text: String){
        let placeholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor : UIColor.placeholderText])
        self.attributedPlaceholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
