//
//  HomeCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 22/11/23.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator{
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        //viewController.onLoginTap = gotoLoginTap
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
