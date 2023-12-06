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
        tabBarController.modalPresentationStyle = .overFullScreen
        
        let homeNavigation = UINavigationController()
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
        //let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        
        //let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        let navigationControllers = [homeNavigation, sobreNavigation]
        tabBarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabBarController, animated: true)
        
    }
}
