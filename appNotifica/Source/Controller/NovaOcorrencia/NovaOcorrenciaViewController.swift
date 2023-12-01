//
//  NovaOcorrenciaViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault{
    var onCameraTap: (() -> Void)?
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let view = NovaOcorrenciaView()
        
        view.onCameraTap = { [weak self] in
            if let self = self{
                self.onCameraTap?()
            }
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
