//
//  EscolherImagem.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 01/12/23.
//

import Foundation
import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {
    
    var selecionador = UIImagePickerController()
    
    var alerta = UIAlertController(title: "Escolha uma opção", message: nil, preferredStyle: .actionSheet)
    
    var viewController: UIViewController?
    
    var retornoSelecionador: ((UIImage) -> Void)?
    
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> Void)){
        
        self.retornoSelecionador = retorno
        
        self.viewController = viewController
        
        let camera = UIAlertAction(title: "Camera", style: .default, handler: { _ in
            self.abrirCamera()
        })
        
        let galeria = UIAlertAction(title: "Galeria", style: .default){ _ in
            self.abrirGaleria()
        }
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: { _ in })
            
        
        selecionador.delegate = self
        
        alerta.addAction(camera)
        alerta.addAction(galeria)
        alerta.addAction(cancelar)
        
        //alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    }
    
    
    func abrirCamera(){
        
        alerta.dismiss(animated: true, completion: nil)
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            selecionador.sourceType = .camera
            
            self.viewController?.present(selecionador, animated: true, completion: nil)
        } else {
            let alerta = UIAlertController(title: "Alerta", message: "Câmera não disponível", preferredStyle: .actionSheet)
            
            let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: { _ in})
            
            alerta.addAction(cancelar)
            self.viewController?.present(alerta, animated: true, completion: nil)
        }
        
        
    }
    
    func abrirGaleria(){
        alerta.dismiss(animated: true, completion: nil)
        
        selecionador.sourceType = .photoLibrary
        
        self.viewController?.present(selecionador, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else{
            fatalError("Esperava-se uma imagem, mas foi dado o seguinte: \(info)")
        }
        retornoSelecionador?(image)
    }
}
