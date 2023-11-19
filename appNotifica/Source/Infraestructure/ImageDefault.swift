//
//  ImageDefault.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-17 on 17/11/23.
//

import Foundation
import UIKit

class ImageDefault: UIImageView{
    init(image: String){
        super.init(frame: .zero)
        initImageDefault(image: image)
    }
    
    private func initImageDefault(image: String){

        self.image = UIImage(named: image)
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
}
