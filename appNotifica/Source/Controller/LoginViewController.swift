//
//  LoginViewController.swift
//  appNotifica
//
//  Created by Daniel Amaral on 18/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    
    var viewMain = LoginView()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
