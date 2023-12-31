//
//  RegisterCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 20/11/23.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator{
   
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        viewController.onLoginTap = gotoLoginTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func gotoLoginTap(){
        self.navigationController.popViewController(animated: true)
    }
    
}
