//
//  ViewDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 24/11/23.
//

import Foundation
import UIKit

class ViewDefault: UIView{
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor
            setupVisualElements()
            
        }
    
    func setupVisualElements(){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
