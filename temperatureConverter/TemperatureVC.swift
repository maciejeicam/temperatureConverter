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
    let FCButton = FtoCButton(backgroundColor: .systemBlue, title: "ºF --> ºC")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addCFTarget()
        addCKTarget()
        addFCTarget()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureConverterLabel()
        configureCtoFButton()
        configureCtoKButton()
        configureFtoCButton()
    }
    
    @objc func CFConverter(){
        let desVC = CtoFVC()
        desVC.modalTransitionStyle = .crossDissolve
        desVC.titleLabel.text = ""
        desVC.view.backgroundColor = .systemMint
        present(desVC, animated: true)
    }
    
    @objc func CKConverter(){
        let secDesVC = CtoKVC()
        secDesVC.modalTransitionStyle = .crossDissolve
        secDesVC.view.backgroundColor = .systemMint
        present(secDesVC, animated: true)
    }
    @objc func FCConverter(){
        let FCDesVC = FtoCVC()
        FCDesVC.modalTransitionStyle = .crossDissolve
        FCDesVC.view.backgroundColor = .systemMint
        present(FCDesVC, animated: true)
    }
    
    func addCFTarget(){
        CFButton.addTarget(self, action: #selector(CFConverter), for: .touchUpInside)
    }
    
    func addCKTarget(){
        CKButton.addTarget(self, action: #selector(CKConverter), for: .touchUpInside)
    }
    
    func addFCTarget(){
        FCButton.addTarget(self, action: #selector(FCConverter), for: .touchUpInside)
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
    
    func configureFtoCButton(){
        view.addSubview(FCButton)
        FCButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            FCButton.widthAnchor.constraint(equalToConstant: 120),
            FCButton.heightAnchor.constraint(equalToConstant: 50),
            FCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FCButton.topAnchor.constraint(equalTo: CKButton.bottomAnchor, constant: 20)
        ])
    }
}
