//
//  RegisterViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController{
    var  onLoginTap: (() -> Void)?
    
    //var viewMain = RegisterView()
    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        
        view.onLoginTap = {
            self.onLoginTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
