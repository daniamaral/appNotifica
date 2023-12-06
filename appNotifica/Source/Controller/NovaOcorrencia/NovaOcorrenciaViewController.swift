//
//  NovaOcorrenciaViewController.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault{
    
    let viewModel: NovaOcorrenciaViewModel
    
    init(viewModel: NovaOcorrenciaViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let view = NovaOcorrenciaView(viewModel: viewModel)
        
        view.onCameraTap = { 
            EscolherImagem().selecionadorImagem(self){ imagem in
            view.setImage(imagem)
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
