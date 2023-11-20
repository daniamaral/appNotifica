//
//  LoginViewController.swift
//  appNotifica
//
//  Created by Daniel Amaral on 18/11/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController{
    var  onRegisterTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        //view.onRegisterTap = self.onRegisterTap //forma do professor
        
        view.onRegisterTap = { // forma do especialista da ntt data
            self.onRegisterTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
