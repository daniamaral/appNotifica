//
//  SobreView.swift
//  appNotifica
//
//  Created by IFB-BIOTIC-17 on 27/11/23.
//

import Foundation
import UIKit

class SobreView: ViewDefault{
    
    var imageSobre = ImageDefault(image: "ImageLogin")
    
    var sobreLabel = LabelDefault(text: "Aplicativo desenvolvido pelos professores do curso Desenvolvimento de aplicativos utilizando a linguagem Swift do IFB com intuito de permitir que ocorrências sejam registradas e acompanhadas, bem como solucionadas.", fontName: "SFProDisplay-Light", fontSize: 15)
    
    var desenvolvedoresLabel = LabelDefault(text: "Desenvolvedores", fontName: "SFProDisplay-Bold", fontSize: 15)
    
    var nomesLabel = LabelDefault(text: "Caio Moura Daoud\nDiógenes Ferreira Reis Fustinoni\nFábio Ferraz Fernandez\nHeitor José dos Santos Barros\nJosé Dario Pintor da Silva\nTiago Henrique Faccio Segato\nDaniel Amaral Ribeiro", fontName: "SFProDisplay-Light", fontSize: 15)
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.addSubview(imageSobre)
        self.addSubview(sobreLabel)
        self.addSubview(desenvolvedoresLabel)
        self.addSubview(nomesLabel)
        
        NSLayoutConstraint.activate([
        
            //imageSobre.widthAnchor.constraint(equalToConstant: 274.99),
            imageSobre.heightAnchor.constraint(equalToConstant: 82.64),
            imageSobre.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageSobre.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageSobre.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            sobreLabel.widthAnchor.constraint(equalToConstant: 100),
            sobreLabel.topAnchor.constraint(equalTo: imageSobre.bottomAnchor, constant: 60),
            sobreLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            sobreLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            
            desenvolvedoresLabel.widthAnchor.constraint(equalToConstant: 50),
            desenvolvedoresLabel.topAnchor.constraint(equalTo: sobreLabel.bottomAnchor, constant: 80),
            desenvolvedoresLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            desenvolvedoresLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
        
            nomesLabel.widthAnchor.constraint(equalToConstant: 50),
            nomesLabel.topAnchor.constraint(equalTo: desenvolvedoresLabel.bottomAnchor, constant: 30),
            nomesLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            nomesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25)
            
        ])
    }
    
   
    
    
}
