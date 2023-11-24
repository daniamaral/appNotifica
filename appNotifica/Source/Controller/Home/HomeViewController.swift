//
//  HomeViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 22/11/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault{
    
    
    lazy var homeView: HomeView = {
        let view = HomeView()
        
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
    }
}
