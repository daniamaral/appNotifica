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
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    func start() {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }
    
    func presentNovaOcorrencia(){
        let viewModel = NovaOcorrenciaViewModel(coordinator: self)
        let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
        
        navigationController.present(navigationNovaOcorrencia, animated: true)
    }
}
