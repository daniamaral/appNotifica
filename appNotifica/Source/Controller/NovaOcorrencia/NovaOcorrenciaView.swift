//
//  NovaOcorrenciaView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
    
    var viewModel: NovaOcorrenciaViewModel
    
    init(viewModel: NovaOcorrenciaViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    

    
    var onCameraTap : (() -> Void)?
    
    lazy var imagemCamera: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imagemCamera")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        return view
    }()
    
    lazy var titleTextField = TextFieldDefault(text: "Título", keyBoardType: .default, returnKeyType: .next)
//    lazy var underline1: UIView = {
//        let line = UIView()
//        line.layer.borderColor = UIColor.red.cgColor
//        line.layer.borderWidth = 1
//        line.translatesAutoresizingMaskIntoConstraints = false
//        
//        return line
//    }()
    lazy var descriptionTextField = TextFieldDefault(text: "Descrição", keyBoardType: .default, returnKeyType: .next)
    lazy var localizationTextField = TextFieldDefault(text: "Localização", keyBoardType: .default, returnKeyType: .next)
    lazy var dataTextField = TextFieldDefault(text: "Data", keyBoardType: .default, returnKeyType: .next)
    lazy var statusTextField = TextFieldDefault(text: "Status", keyBoardType: .default, returnKeyType: .done)
    lazy var saveButton = ButtonDefault(button: "SALVAR")
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.addSubview(imagemCamera)
        self.addSubview(titleTextField)
        //self.addSubview(underline1)
        self.addSubview(descriptionTextField)
        self.addSubview(localizationTextField)
        self.addSubview(dataTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
        
        titleTextField.delegate = self
        descriptionTextField.delegate = self
        localizationTextField.delegate = self
        dataTextField.delegate = self
        statusTextField.delegate = self
        
        NSLayoutConstraint.activate([
        
            
            imagemCamera.heightAnchor.constraint(equalToConstant: 209),
            imagemCamera.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagemCamera.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagemCamera.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            
            titleTextField.heightAnchor.constraint(equalToConstant: 44),
            titleTextField.topAnchor.constraint(equalTo: imagemCamera.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
//            underline1.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 5),
//            underline1.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
//            underline1.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
//            underline1.heightAnchor.constraint(equalToConstant: 1),
            
            descriptionTextField.heightAnchor.constraint(equalToConstant: 44),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            localizationTextField.heightAnchor.constraint(equalToConstant: 44),
            localizationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 20),
            localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            dataTextField.heightAnchor.constraint(equalToConstant: 44),
            dataTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 20),
            dataTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            dataTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            statusTextField.heightAnchor.constraint(equalToConstant: 44),
            statusTextField.topAnchor.constraint(equalTo: dataTextField.bottomAnchor, constant: 20),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            saveButton.widthAnchor.constraint(equalToConstant: 358),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 25),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 35),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35)
        
        ])
    }
    
    @objc private func cameraTap(){
        self.onCameraTap?()
    }
    
    func setImage(_ image: UIImage){
        self.imagemCamera.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NovaOcorrenciaView: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == titleTextField) {
            self.descriptionTextField.becomeFirstResponder()
        } else if (textField == descriptionTextField){
            self.localizationTextField.becomeFirstResponder()
        } else if (textField == localizationTextField){
            self.dataTextField.becomeFirstResponder()
        } else if (textField == dataTextField){
            self.statusTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }

}

