//
//  RegisterViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 20/11/23.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault{
    var  onLoginTap: (() -> Void)?
    
    deinit{
        print("Destruindo \(type(of:self))")
    }
    
    //var viewMain = RegisterView()
    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        
        view.onLoginTap = { [weak self] in
            if let self = self{
                self.onLoginTap?()
            }
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
    
    }
}
