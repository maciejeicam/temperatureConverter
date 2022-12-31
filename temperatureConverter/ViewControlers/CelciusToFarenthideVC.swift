//
//  CtoFVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class CelciusToFarenthideVC: UIViewController,UITextFieldDelegate {
    
    let celciusToFarenthideToCelciusLabel = DegreesSubviewLabel(title: "To convert Celcius to Farenthide or Farenthide to Celcius press correct button")
    let celciusToFarenthideUserTextField = ConfigureUserTextField()
    let celciusToFarenthideResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºC → ºF")
    let farenthideToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºF -->ºC")
    var celciusToFarenthideConverterScoreLabel = CustomResultLabel()
    var celciusToFarenthideToCelciustext = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        celciusToFarenthideConfigureConverterButton()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureCelciusToFarenthideLabel()
        celciusToFarenthideConfigureUserText()
        celciusToFarenthideConfigureConverterButton()
        farenthideToCelciusConfigureConverterButton()
        celciusToFarenthideConfigureScoreLabel()
        celciusToFarenthideUserTextField.delegate = self
    }
    
    @objc func celciusToFarenthideConfigureButton() {
        print(celciusToFarenthideToCelciustext)
        let celciusToFarenthideSum = ((Float(celciusToFarenthideToCelciustext)! * 1.8 ) + 32)
        celciusToFarenthideConverterScoreLabel.text = "\(celciusToFarenthideSum)"
    }
    
    @objc func farenthideToCelciusConfigureButton() {
        print(celciusToFarenthideToCelciustext)
        let farenthideToCelciusSum = (((Float(celciusToFarenthideToCelciustext)! - 32 ) * 5 ) / 9)
        celciusToFarenthideConverterScoreLabel.text = "\(farenthideToCelciusSum)"
    }
    
    func celciusToFarenthideToCelciusButtonConfigure() {
        celciusToFarenthideResultButton.addTarget(self, action: #selector(celciusToFarenthideConfigureButton), for: .touchUpInside)
        farenthideToCelciusResultButton.addTarget(self, action: #selector(farenthideToCelciusConfigureButton), for: .touchUpInside)
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
    
    @objc func textDidChange(sender: UITextField) {
        celciusToFarenthideToCelciustext = sender.text!
    }
    
    func celciusToFarenthideConfigureUserText (){
        view.addSubview(celciusToFarenthideUserTextField)
        celciusToFarenthideUserTextField.translatesAutoresizingMaskIntoConstraints = false
        celciusToFarenthideUserTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
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
