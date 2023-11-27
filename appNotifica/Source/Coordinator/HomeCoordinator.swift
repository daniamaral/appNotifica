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
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    func start() {
        self.navigationController.pushViewController(homeViewController, animated: true)
    }
}
