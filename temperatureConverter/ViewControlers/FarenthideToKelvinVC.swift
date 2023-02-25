//
//  FtoCVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class FarenthideToKelvinVC: UIViewController, UITextFieldDelegate {
    
    let farenthideToKelvinLabel = DegreesSubviewLabel(title: "To convert Farenthide to Celcius or Celvin to Farenthide press correct button")
    let farenthideToKelvinToFarenthideuserTextField = ConfigureUserTextField()
    let farenthideToKelvinResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºF → ºK")
    let kelvinToFarenthideResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºK → ºF")
    let farenthideToKelvinConverterScoreLabel = CustomResultLabel()
    var farenthideToKelvinToFarenthideText = ""
    let padding: CGFloat = 20
    let heightPadding: CGFloat = 50
    let widathPadding: CGFloat = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        kelvinToFarenthideToKelvinConfigureButton()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureFarenthideToCelcius()
        farenthideToKelvinToFarenthideUserText()
        farenthideToKelvinConverterButton()
        kelvinToFarenthideConverterButton()
        farenthideToKelvinToFarenthideConfigureScoreLabel()
        farenthideToKelvinToFarenthideuserTextField.delegate = self
    }
    
    @objc func farenthideToKelvinConfigureButton(){
        let farenthideToKelvinSum = (((Float(farenthideToKelvinToFarenthideText)! + 459.67) * 5) / 9)
        let roundedFarenthideToKelvinSum = round(farenthideToKelvinSum * 100) / 100.0
        farenthideToKelvinConverterScoreLabel.text = "\(roundedFarenthideToKelvinSum) ºK"
    }
    
    @objc func kelvinToFarenthideConfigureButton(){
        let kelvinToFarenthideSum = (((Float(farenthideToKelvinToFarenthideText)! - 273.15) * 1.8) + 32)
        let roundedKelvinToFarenthideSum = round(kelvinToFarenthideSum * 100) / 100.0
        farenthideToKelvinConverterScoreLabel.text = "\(roundedKelvinToFarenthideSum) ºF"
    }
    
    func kelvinToFarenthideToKelvinConfigureButton() {
        farenthideToKelvinResultButton.addTarget(self, action: #selector(farenthideToKelvinConfigureButton), for: .touchUpInside)
        kelvinToFarenthideResultButton.addTarget(self, action: #selector(kelvinToFarenthideConfigureButton), for: .touchUpInside)
    }
    
    func configureFarenthideToCelcius(){
        view.addSubview(farenthideToKelvinLabel)
        farenthideToKelvinLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            farenthideToKelvinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            farenthideToKelvinLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
    
    @objc func textDidChange(sender: UITextField) {
        farenthideToKelvinToFarenthideText = sender.text!
    }
    
    func farenthideToKelvinToFarenthideUserText (){
        view.addSubview(farenthideToKelvinToFarenthideuserTextField)
        farenthideToKelvinToFarenthideuserTextField.translatesAutoresizingMaskIntoConstraints = false
        farenthideToKelvinToFarenthideuserTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        
        NSLayoutConstraint.activate([
            farenthideToKelvinToFarenthideuserTextField.topAnchor.constraint(equalTo: farenthideToKelvinLabel.bottomAnchor, constant: padding),
            farenthideToKelvinToFarenthideuserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            farenthideToKelvinToFarenthideuserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            farenthideToKelvinToFarenthideuserTextField.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func farenthideToKelvinConverterButton() {
        view.addSubview(farenthideToKelvinResultButton)
        farenthideToKelvinResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinResultButton.topAnchor.constraint(equalTo: farenthideToKelvinToFarenthideuserTextField.bottomAnchor, constant: 2 * padding),
            farenthideToKelvinResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToKelvinResultButton.widthAnchor.constraint(equalToConstant: widathPadding),
            farenthideToKelvinResultButton.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func kelvinToFarenthideConverterButton() {
        view.addSubview(kelvinToFarenthideResultButton)
        kelvinToFarenthideResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kelvinToFarenthideResultButton.topAnchor.constraint(equalTo: farenthideToKelvinResultButton.bottomAnchor, constant: 2 * padding),
            kelvinToFarenthideResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            kelvinToFarenthideResultButton.widthAnchor.constraint(equalToConstant: widathPadding),
            kelvinToFarenthideResultButton.heightAnchor.constraint(equalToConstant: heightPadding)
        ])
    }
    
    func farenthideToKelvinToFarenthideConfigureScoreLabel() {
        view.addSubview(farenthideToKelvinConverterScoreLabel)
        farenthideToKelvinConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinConverterScoreLabel.topAnchor.constraint(equalTo: kelvinToFarenthideResultButton.bottomAnchor, constant: 2 * padding),
            farenthideToKelvinConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
