//
//  NovaOcorrenciaCoordinator.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class NovaOcorrenciaCoordinator: Coordinator{
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    lazy var novaOcorrenciaViewController: NovaOcorrenciaViewController = {
        let viewController = NovaOcorrenciaViewController()
        
        viewController.tabBarItem.title = "Nova Ocorrência"
        viewController.tabBarItem.image = UIImage(systemName: "note.text.badge.plus")
        return viewController
    }()
    
    func start() {
        
        //viewController.onLoginTap = gotoLoginTap
        self.navigationController.pushViewController(novaOcorrenciaViewController, animated: true)
    }
    
    
}
