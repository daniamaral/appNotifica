//
//  ViewControllerDefault.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 24/11/23.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.navigationController?.navigationBar.prefersLargeTitles = false
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyBoardByTappingOutside))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyBoardByTappingOutside(){
        self.view.endEditing(true)
    }
    
}

