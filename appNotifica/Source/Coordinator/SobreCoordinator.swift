//
//  SobreCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class SobreCoordinator: Coordinator{
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    func start() {
        
        //viewController.onLoginTap = gotoLoginTap
        self.navigationController.setViewControllers([sobreViewController], animated: false)
    }
}
