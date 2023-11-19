//
//  ButtonDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton{
    init(button: String){
        super.init(frame: .zero)
        initButtonDefault(button: button)
    }
    
    private func initButtonDefault(button: String){
        self.setTitle(button, for: .normal)
        self.layer.backgroundColor = UIColor(named: "buttonBackGroundColor")?.cgColor
        self.layer.cornerRadius = 14
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
