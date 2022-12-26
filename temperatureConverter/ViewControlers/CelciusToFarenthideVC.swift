//
//  CtoFVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class CelciusToFarenthideVC: UIViewController {
    
    let celciusToFarenthideToCelciusLabel = DegreesSubviewLabel(title: "To convert Celcius to Farenthide or Farenthide to Celcius press correct button")
    let celciusToFarenthideUserTextField = ConfigureUserTextField()
    let celciusToFarenthideResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºC --> ºF")
    let farenthideToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºF -->ºC")
    let celciusToFarenthideConverterScoreLabel = CustomeSemiLabel(title: "___")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        buttonConfigure()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureCelciusToFarenthideLabel()
        celciusToFarenthideConfigureUserText()
        celciusToFarenthideConfigureConverterButton()
        farenthideToCelciusConfigureConverterButton()
        celciusToFarenthideConfigureScoreLabel()
    }
    
    @objc func celciusToFarenthideConfigureButton() {
        
        
    }
    
    func buttonConfigure() {
        celciusToFarenthideResultButton.addTarget(self, action: #selector(celciusToFarenthideConfigureButton), for: .touchUpInside)
    }
    
    func celciusToFarenthideVC() {
        
    }
    
    func configureCelciusToFarenthideLabel(){
        view.addSubview(celciusToFarenthideToCelciusLabel)
        celciusToFarenthideToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToFarenthideToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToFarenthideToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciusToFarenthideConfigureUserText (){
        view.addSubview(celciusToFarenthideUserTextField)
        celciusToFarenthideUserTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideUserTextField.topAnchor.constraint(equalTo: celciusToFarenthideToCelciusLabel.bottomAnchor, constant: 20),
            celciusToFarenthideUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToFarenthideUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            celciusToFarenthideUserTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToFarenthideConfigureConverterButton() {
        view.addSubview(celciusToFarenthideResultButton)
        celciusToFarenthideResultButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideResultButton.topAnchor.constraint(equalTo: celciusToFarenthideUserTextField.bottomAnchor, constant: 40),
            celciusToFarenthideResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToFarenthideResultButton.widthAnchor.constraint(equalToConstant: 120),
            celciusToFarenthideResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToCelciusConfigureConverterButton() {
        view.addSubview(farenthideToCelciusResultButton)
        farenthideToCelciusResultButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusResultButton.topAnchor.constraint(equalTo: celciusToFarenthideResultButton.bottomAnchor, constant: 40),
            farenthideToCelciusResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToCelciusResultButton.widthAnchor.constraint(equalToConstant: 120),
            farenthideToCelciusResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToFarenthideConfigureScoreLabel() {
        view.addSubview(celciusToFarenthideConverterScoreLabel)
        celciusToFarenthideConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideConverterScoreLabel.topAnchor.constraint(equalTo: farenthideToCelciusResultButton.bottomAnchor, constant: 40),
            celciusToFarenthideConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
