//
//  HomeViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 22/11/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault{
    
    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    
    lazy var homeView: HomeView = {
        let view = HomeView(viewModel: viewModel)
        
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    @objc func handleAdd(){
        viewModel.didTapAdd()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
