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
        viewController.onRegisterTap = gotoRegisterTap
        viewController.onHomeTap = gotoHomeTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoRegisterTap(){
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
        
    }
    
    private func gotoHomeTap(){
        let coordinator = HomeCoordinator(navigationController: navigationController)
        coordinator.start()
        
    }
    
}
