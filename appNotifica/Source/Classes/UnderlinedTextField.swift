//
//  UnderlinedTextField+.swift
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
    
    // Definição do tamanho da underline e posicionamento, feito 1 ponto abaixo do textfield
        func setupUnderlineLayer() {
            var frame = self.bounds
            frame.origin.y = frame.size.height - 1
            frame.size.height = 1

            underlineLayer.frame = frame
            underlineLayer.backgroundColor = UIColor.lightGray.cgColor
        }

        // Adicionar a underline como subcamada da camada principal do view
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.layer.addSublayer(underlineLayer)
        }

        // Adicionar a underline como subcamada da camada principal do view
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.layer.addSublayer(underlineLayer)
        }

        // Atualizar a subview quando a view for atualizada, também corrigindo suas dimensões
        
        override func layoutSubviews() {
            super.layoutSubviews()
            setupUnderlineLayer()
        }
    
}
