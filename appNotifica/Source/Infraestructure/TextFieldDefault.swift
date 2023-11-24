//
//  TextFieldDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class TextFieldDefault: UnderlinedTextField{
    //construtor recebendo apenas o texto do placeholder
    init(text: String) {
        super.init(frame: .zero)
        initTextFieldDefault(text: text, keyBoardType: .default, returnKeyType: .default, isSecureText: false)
    }
    //contrutor recebendo mais informações sobre o tipo de teclado e a tecla de retorno
    init(text: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType, isSecureText: Bool) {
        super.init(frame: .zero)
        initTextFieldDefault(text: text, keyBoardType: keyBoardType, returnKeyType: returnKeyType, isSecureText: isSecureText)
    }
    
    private func initTextFieldDefault(text: String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType, isSecureText: Bool){
        let placeholder = NSAttributedString(string: text, attributes: [NSAttributedString.Key.foregroundColor : UIColor.placeholderText])
        self.attributedPlaceholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.isSecureTextEntry = isSecureText
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
