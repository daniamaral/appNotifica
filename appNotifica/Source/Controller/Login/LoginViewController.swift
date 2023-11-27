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
    
    deinit{
        print("Destruindo \(type(of:self))")
    }
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        //view.onRegisterTap = self.onRegisterTap //forma do professor
        
        view.onRegisterTap = { [weak self] in    // forma do especialista da ntt data
            if let self = self{
                self.onRegisterTap?()
            }
        }
        
        view.onHomeTap = { [weak self] in   
            if let self = self{
                self.onHomeTap?()
            }
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
