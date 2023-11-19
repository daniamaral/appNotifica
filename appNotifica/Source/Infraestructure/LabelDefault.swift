//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel{
    init(text: String) {
        super.init(frame: .zero)
        initLabelDefault(text: text)
    }
    
    private func initLabelDefault(text: String){
        self.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        self.font = UIFont(name: "SFProDisplay-Light", size: 16)
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
