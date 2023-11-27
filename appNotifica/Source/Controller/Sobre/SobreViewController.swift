//
//  SobreViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault{
    
    
    lazy var sobreView: SobreView = {
        let view = SobreView()
        
        return view
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre o App"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
