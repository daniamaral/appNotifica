//
//  EscolherImagem.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 01/12/23.
//

import Foundation
import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var selecionador = UIImagePickerController()
    
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    var viewController: UIViewController?
    
    var retornoSelecionador: ((UIImage)) -> ()?
    
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> ())){
        
        retornoSelecionador = retorno
        
        self.viewController = viewController
        
        let camera = UIAlertAction(title: "Camera", style: .default){
            UIAlertAction in
        }
        
    }
}
