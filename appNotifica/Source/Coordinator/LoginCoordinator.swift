//
//  LoginCoordinator.swift
//  appNotifica
//
//  Created by Daniel Amaral on 18/11/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.viewMain.onRegisterTap = gotoRegisterTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoRegisterTap(){
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
}
