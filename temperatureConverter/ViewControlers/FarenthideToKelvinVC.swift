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
    let farenthideToKelvinResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºF --> ºK")
    let kelvinToFarenthideResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºK --> ºF")
    let farenthideToKelvinConverterScoreLabel = CustomResultLabel()
    var farenthideToKelvinToFarenthideText = ""
    
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
        print(farenthideToKelvinToFarenthideText)
        let kelvinToFarenthideSum = (((Float(farenthideToKelvinToFarenthideText)! + 459.67) * 5) / 9)
        farenthideToKelvinConverterScoreLabel.text = "\(kelvinToFarenthideSum)"
    }
    
    @objc func kelvinToFarenthideConfigureButton(){
        print(farenthideToKelvinToFarenthideText)
        let kelvinToFarenthideSum = (((Float(farenthideToKelvinToFarenthideText)! - 273.15) * 1.8) + 32)
        farenthideToKelvinConverterScoreLabel.text = "\(kelvinToFarenthideSum)"
    }
    
    func kelvinToFarenthideToKelvinConfigureButton() {
        farenthideToKelvinResultButton.addTarget(self, action: #selector(farenthideToKelvinConfigureButton), for: .touchUpInside)
        kelvinToFarenthideResultButton.addTarget(self, action: #selector(kelvinToFarenthideConfigureButton), for: .touchUpInside)
        
    }
    
    func configureFarenthideToCelcius(){
        view.addSubview(farenthideToKelvinLabel)
        farenthideToKelvinLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            farenthideToKelvinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            farenthideToKelvinLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
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
            farenthideToKelvinToFarenthideuserTextField.topAnchor.constraint(equalTo: farenthideToKelvinLabel.bottomAnchor, constant: 20),
            farenthideToKelvinToFarenthideuserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            farenthideToKelvinToFarenthideuserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            farenthideToKelvinToFarenthideuserTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToKelvinConverterButton() {
        view.addSubview(farenthideToKelvinResultButton)
        farenthideToKelvinResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinResultButton.topAnchor.constraint(equalTo: farenthideToKelvinToFarenthideuserTextField.bottomAnchor, constant: 40),
            farenthideToKelvinResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToKelvinResultButton.widthAnchor.constraint(equalToConstant: 120),
            farenthideToKelvinResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func kelvinToFarenthideConverterButton() {
        view.addSubview(kelvinToFarenthideResultButton)
        kelvinToFarenthideResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            kelvinToFarenthideResultButton.topAnchor.constraint(equalTo: farenthideToKelvinResultButton.bottomAnchor, constant: 40),
            kelvinToFarenthideResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            kelvinToFarenthideResultButton.widthAnchor.constraint(equalToConstant: 120),
            kelvinToFarenthideResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToKelvinToFarenthideConfigureScoreLabel() {
        view.addSubview(farenthideToKelvinConverterScoreLabel)
        farenthideToKelvinConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToKelvinConverterScoreLabel.topAnchor.constraint(equalTo: kelvinToFarenthideResultButton.bottomAnchor, constant: 40),
            farenthideToKelvinConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
