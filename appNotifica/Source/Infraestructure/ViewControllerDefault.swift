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
       
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}

