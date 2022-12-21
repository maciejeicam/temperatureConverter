//
//  CtoKVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CelciusToKelvinVC: UIViewController {
    
    let celciusToKelvinLabel = DegreesSubviewLabel(title: "To convert Celcius to Kelvin write a number")
    let celciusToKelvinUserTextField = UITextField()
    let celciusToKelvinResultButton = DegreesButton(backgroundColor: .systemBlue, title: "Convert")
    let celciusToKelvinconverterScoreLabel = CustomeSemiLabel(title: "result")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemMint
        configureCelciusToKelvin()
        celciusToKelvinUserText()
        celciusToKelvinConverterButton()
        celciusToKelvinConfigureScoreLabel()
    }
    
    func configureCelciusToKelvin(){
        view.addSubview(celciusToKelvinLabel)
        celciusToKelvinLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToKelvinLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToKelvinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToKelvinLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciusToKelvinUserText() {
        view.addSubview(celciusToKelvinUserTextField)
        celciusToKelvinUserTextField.translatesAutoresizingMaskIntoConstraints = false
        celciusToKelvinUserTextField.textAlignment = .center
        celciusToKelvinUserTextField.becomeFirstResponder()
        celciusToKelvinUserTextField.keyboardType = .numberPad
        NSLayoutConstraint.activate([
            celciusToKelvinUserTextField.topAnchor.constraint(equalTo: celciusToKelvinLabel.bottomAnchor, constant: 20),
            celciusToKelvinUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToKelvinUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            celciusToKelvinUserTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToKelvinConverterButton() {
        view.addSubview(celciusToKelvinResultButton)
        celciusToKelvinResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinResultButton.topAnchor.constraint(equalTo: celciusToKelvinUserTextField.bottomAnchor, constant: 40),
            celciusToKelvinResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToKelvinResultButton.widthAnchor.constraint(equalToConstant: 120),
            celciusToKelvinResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToKelvinConfigureScoreLabel() {
        view.addSubview(celciusToKelvinconverterScoreLabel)
        celciusToKelvinconverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinconverterScoreLabel.topAnchor.constraint(equalTo: celciusToKelvinResultButton.bottomAnchor, constant: 40),
            celciusToKelvinconverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
