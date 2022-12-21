//
//  FtoCVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class FarenthideToCelciusVC: UIViewController {
    
    let farenthideToCelciusLabel = DegreesSubviewLabel(title: "To convert Farenthide to Celcius write a number")
    let userTextField = UITextField()
    let resultButton = DegreesButton(backgroundColor: .systemBlue, title: "Convert")
    let converterScoreLabel = CustomeSemiLabel(title: "result")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemPurple
        configureFarenthideToCelcius()
        farenthideToCelciusUserText()
        farenthideToCelciusConverterButton()
        farenthideToCelciusConfigureScoreLabel()
    }
    
    func configureFarenthideToCelcius(){
        view.addSubview(farenthideToCelciusLabel)
        farenthideToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            farenthideToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            farenthideToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func farenthideToCelciusUserText (){
        view.addSubview(userTextField)
        userTextField.translatesAutoresizingMaskIntoConstraints = false
        userTextField.textAlignment = .center
        userTextField.becomeFirstResponder()
        userTextField.keyboardType = .numberPad
        NSLayoutConstraint.activate([
            userTextField.topAnchor.constraint(equalTo: farenthideToCelciusLabel.bottomAnchor, constant: 20),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            userTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToCelciusConverterButton() {
        view.addSubview(resultButton)
        resultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resultButton.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 40),
            resultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultButton.widthAnchor.constraint(equalToConstant: 120),
            resultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToCelciusConfigureScoreLabel() {
        view.addSubview(converterScoreLabel)
        converterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            converterScoreLabel.topAnchor.constraint(equalTo: resultButton.bottomAnchor, constant: 40),
            converterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
