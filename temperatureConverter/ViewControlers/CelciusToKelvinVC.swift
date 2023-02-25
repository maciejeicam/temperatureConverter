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
    let celciusToKelvinResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºC → ºK")
    let kelvinToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºK → ºC")
    let celciusToKelvinScoreLabel = CustomResultLabel()
    var celciusToKelvinToCelciustext = ""
    let padding: CGFloat = 20
    let heightPadding: CGFloat = 50
    let widthPadding: CGFloat = 120
    
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
        let celciusToKelvinSum = (Float(celciusToKelvinToCelciustext)! + 273.15)
        let roundedCelciusToKelvinSum = round(celciusToKelvinSum * 100) / 100.0
        celciusToKelvinScoreLabel.text = "\(roundedCelciusToKelvinSum) ºK"
    }
    
    @objc func kelvinToCelciusConfigureButton() {
        let kelvinToCelciusSum = (Float(celciusToKelvinToCelciustext)! - 273.15)
        let roundedKelvinToCelciusSum = round(kelvinToCelciusSum * 100) / 100.0
        celciusToKelvinScoreLabel.text = "\(roundedKelvinToCelciusSum) ºC"
    }
    
    func celciusToKelvinToCelciusButtonConfigure() {
        celciusToKelvinResultButton.addTarget(self, action: #selector(celciusToKelvinConfigureButton), for: .touchUpInside)
        kelvinToCelciusResultButton.addTarget(self, action: #selector(kelvinToCelciusConfigureButton), for: .touchUpInside)
    }
    
    func configureCelciusToKelvinLabel(){
        view.addSubview(celciusToKelvinToCelciusLabel)
        celciusToKelvinToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            celciusToKelvinToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            celciusToKelvinToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
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
            celciusToKelvinToCelciusUserTextField.topAnchor.constraint(equalTo: celciusToKelvinToCelciusLabel.bottomAnchor, constant: padding),
            celciusToKelvinToCelciusUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            celciusToKelvinToCelciusUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            celciusToKelvinToCelciusUserTextField.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func celciusToKelvinConverterButton() {
        view.addSubview(celciusToKelvinResultButton)
        celciusToKelvinResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinResultButton.topAnchor.constraint(equalTo: celciusToKelvinToCelciusUserTextField.bottomAnchor, constant: 2 * padding),
            celciusToKelvinResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToKelvinResultButton.widthAnchor.constraint(equalToConstant: widthPadding),
            celciusToKelvinResultButton.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func kelvinToCelciusConverterButton() {
        view.addSubview(kelvinToCelciusResultButton)
        kelvinToCelciusResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kelvinToCelciusResultButton.topAnchor.constraint(equalTo: celciusToKelvinResultButton.bottomAnchor, constant: 2 * padding),
            kelvinToCelciusResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            kelvinToCelciusResultButton.widthAnchor.constraint(equalToConstant: widthPadding),
            kelvinToCelciusResultButton.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func celciusToKelvinConfigureScoreLabel() {
        view.addSubview(celciusToKelvinScoreLabel)
        celciusToKelvinScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            celciusToKelvinScoreLabel.topAnchor.constraint(equalTo: kelvinToCelciusResultButton.bottomAnchor, constant: 2 * padding),
            celciusToKelvinScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
