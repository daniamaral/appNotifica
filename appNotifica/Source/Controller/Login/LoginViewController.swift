//
//  LoginViewController.swift
//  appNotifica
//
//  Created by Daniel Amaral on 18/11/23.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    var onRegisterTap: (() -> Void)?
    var onHomeTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        //view.onRegisterTap = self.onRegisterTap //forma do professor
        
        view.onRegisterTap = { // forma do especialista da ntt data
            self.onRegisterTap?()
        }
        
        view.onHomeTap = {
            self.onHomeTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
        
    }
}
