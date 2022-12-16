//
//  TemperatureVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class TemperatureVC: UIViewController {
    
    let titleLabel = CustomeTitleLabel(title: "Temperature Converter")
    let convertLabel = CustomeSemiLabel(title: "What You want to convert?")
    let CFButton = CtoFButton(backgroundColor: .systemBlue, title: "ºC --> ºF")
    let CKButton = CtoKButton(backgroundColor: .systemBlue, title: "ºC --> ºK")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addTarget()
        addSecTarget()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureConverterLabel()
        configureCtoFButton()
        configureCtoKButton()
    }
    
    @objc func presentConverter(){
        let desVC = CtoFVC()
        desVC.modalTransitionStyle = .flipHorizontal
        desVC.titleLabel.text = ""
        desVC.view.backgroundColor = .systemGreen
        present(desVC, animated: true)
    }
    
    @objc func CKConverter(){
        let secDesVC = CtoKVC()
        secDesVC.modalTransitionStyle = .crossDissolve
        secDesVC.view.backgroundColor = .systemMint
        present(secDesVC, animated: true)
    }
    
    func addTarget(){
        CFButton.addTarget(self, action: #selector(presentConverter), for: .touchUpInside)
    }
    
    func addSecTarget(){
        CKButton.addTarget(self, action: #selector(CKConverter), for: .touchUpInside)
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configureConverterLabel() {
        view.addSubview(convertLabel)
        convertLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            convertLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            convertLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            convertLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configureCtoFButton(){
        view.addSubview(CFButton)
        CFButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            CFButton.widthAnchor.constraint(equalToConstant: 120),
            CFButton.heightAnchor.constraint(equalToConstant: 50),
            CFButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            CFButton.topAnchor.constraint(equalTo: convertLabel.bottomAnchor, constant: 40)
        ])
    }
    
    func configureCtoKButton(){
        view.addSubview(CKButton)
        CKButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            CKButton.widthAnchor.constraint(equalToConstant: 120),
            CKButton.heightAnchor.constraint(equalToConstant: 50),
            CKButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            CKButton.topAnchor.constraint(equalTo: CFButton.bottomAnchor, constant: 20)
            
        ])
    }
}
