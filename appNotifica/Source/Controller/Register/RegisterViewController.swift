//
//  RegisterViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    
    var viewMain = RegisterView()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
