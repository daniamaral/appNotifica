//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel{
    init(text: String, fontName: String, fontSize: CGFloat, fontColor: UIColor = .gray/*UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)*/) {
        super.init(frame: .zero)
        initLabelDefault(text: text, fontName: fontName, fontSize: fontSize, fontColor: fontColor)
    }
    
    private func initLabelDefault(text: String, fontName: String, fontSize: CGFloat, fontColor: UIColor){
        self.text = text
        
        self.textColor = fontColor
        
        if let font = UIFont(name: fontName, size: fontSize){
            self.font = font
        }else{
            self.font = UIFont.systemFont(ofSize: fontSize)
        }
        //self.font = UIFont(name: "SFProDisplay-Light", size: fontSize)
        self.numberOfLines = 0 //ele usará quantas linhas forem necessárias
        self.textAlignment = .justified
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
