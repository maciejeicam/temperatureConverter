//
//  CtoKVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CelciusToKelvinVC: UIViewController, UITextFieldDelegate {
    
    let celciusToKelvinToCelciusLabel = DegreesSubviewLabel(title: "To convert Celcius to Kelvin or Kelvin To Celcius press correct button")
    let celciusToKelvinToCelciusUserTextField = ConfigureUserTextField()
    let celciusToKelvinResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºC --> ºK")
    let kelvinToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºK --> ºC")
    let celciusToKelvinScoreLabel = CustomResultLabel()
    var celciusToKelvinToCelciustext = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        celciusToKelvinToCelciusButtonConfigure()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureCelciusToKelvinLabel()
        celciusToKelvinUserText()
        celciusToKelvinConverterButton()
        kelvinToCelciusConverterButton()
        celciusToKelvinConfigureScoreLabel()
        celciusToKelvinToCelciusUserTextField.delegate = self
    }
    
    @objc func celciusToKelvinConfigureButton() {
        print(celciusToKelvinToCelciustext)
        let celciusToKelvinSum = (Float(celciusToKelvinToCelciustext)! + 273.15)
        celciusToKelvinScoreLabel.text = "\(celciusToKelvinSum)"
    }
    
    @objc func kelvinToCelciusConfigureButton() {
        print(celciusToKelvinToCelciustext)
        let kelvinToCelciusSum = (Float(celciusToKelvinToCelciustext)! - 273.15)
        celciusToKelvinScoreLabel.text = "\(kelvinToCelciusSum)"
    }
    
    func celciusToKelvinToCelciusButtonConfigure() {
        celciusToKelvinResultButton.addTarget(self, action: #selector(celciusToKelvinConfigureButton), for: .touchUpInside)
        kelvinToCelciusResultButton.addTarget(self, action: #selector(kelvinToCelciusConfigureButton), for: .touchUpInside)
    }
    
    func configureCelciusToKelvinLabel(){
        view.addSubview(celciusToKelvinToCelciusLabel)
        celciusToKelvinToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToKelvinToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToKelvinToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func textDidChange(sender: UITextField) {
        celciusToKelvinToCelciustext = sender.text!
    }
    
    func celciusToKelvinUserText() {
        view.addSubview(celciusToKelvinToCelciusUserTextField)
        celciusToKelvinToCelciusUserTextField.translatesAutoresizingMaskIntoConstraints = false
        celciusToKelvinToCelciusUserTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        NSLayoutConstraint.activate([
            celciusToKelvinToCelciusUserTextField.topAnchor.constraint(equalTo: celciusToKelvinToCelciusLabel.bottomAnchor, constant: 20),
            celciusToKelvinToCelciusUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToKelvinToCelciusUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            celciusToKelvinToCelciusUserTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToKelvinConverterButton() {
        view.addSubview(celciusToKelvinResultButton)
        celciusToKelvinResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinResultButton.topAnchor.constraint(equalTo: celciusToKelvinToCelciusUserTextField.bottomAnchor, constant: 40),
            celciusToKelvinResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToKelvinResultButton.widthAnchor.constraint(equalToConstant: 120),
            celciusToKelvinResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func kelvinToCelciusConverterButton() {
        view.addSubview(kelvinToCelciusResultButton)
        kelvinToCelciusResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kelvinToCelciusResultButton.topAnchor.constraint(equalTo: celciusToKelvinResultButton.bottomAnchor, constant: 40),
            kelvinToCelciusResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            kelvinToCelciusResultButton.widthAnchor.constraint(equalToConstant: 120),
            kelvinToCelciusResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func celciusToKelvinConfigureScoreLabel() {
        view.addSubview(celciusToKelvinScoreLabel)
        celciusToKelvinScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinScoreLabel.topAnchor.constraint(equalTo: kelvinToCelciusResultButton.bottomAnchor, constant: 40),
            celciusToKelvinScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
