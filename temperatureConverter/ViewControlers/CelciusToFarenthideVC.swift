//
//  CtoFVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class CelciusToFarenthideVC: UIViewController {
    
    let celciusToFarenthideLabel = DegreesSubviewLabel(title: "To convert Celcius to Farenthide write a number")
    let celciusToFarenthideUserTextField = ConfigureUserTextField()
    let celciusToFarenthideResultButton = DegreesButton(backgroundColor: .systemMint, title: "Convert")
    let celciusToFarenthideConverterScoreLabel = CustomeSemiLabel(title: "result")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureCelciusToFarenthideLabel()
        celciusToFarenthideConfigureUserText()
        celciusToFarenthideConfigureConverterButton()
        celciusToFarenthideConfigureScoreLabel()
    }
    
    func configureCelciusToFarenthideLabel(){
        view.addSubview(celciusToFarenthideLabel)
        celciusToFarenthideLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToFarenthideLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToFarenthideLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciusToFarenthideConfigureUserText (){
        view.addSubview(celciusToFarenthideUserTextField)
        celciusToFarenthideUserTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideUserTextField.topAnchor.constraint(equalTo: celciusToFarenthideLabel.bottomAnchor, constant: 20),
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
    
    func celciusToFarenthideConfigureScoreLabel() {
        view.addSubview(celciusToFarenthideConverterScoreLabel)
        celciusToFarenthideConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideConverterScoreLabel.topAnchor.constraint(equalTo: celciusToFarenthideResultButton.bottomAnchor, constant: 40),
            celciusToFarenthideConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
