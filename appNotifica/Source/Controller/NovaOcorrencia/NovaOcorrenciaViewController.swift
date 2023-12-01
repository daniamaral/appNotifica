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
        
        view.onCameraTap = {
            EscolherImagem().selecionadorImagem(self){ imagem in
                NovaOcorrenciaView.setImage(image: imagem)
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
