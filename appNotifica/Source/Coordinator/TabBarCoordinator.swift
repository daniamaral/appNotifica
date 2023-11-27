//
//  TabBarCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator{
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    
    func start() {
        let tabBarController = TabBarController()
        
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabBarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController, sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabBarController, animated: true)
        
    }
}
