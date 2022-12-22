//
//  FtoCVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class FarenthideToCelciusVC: UIViewController {
    
    let farenthideToCelciusLabel = DegreesSubviewLabel(title: "To convert Farenthide to Celcius write a number")
    let farenthideToCelciususerTextField = ConfigureUserTextField()
    let farenthideToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "Convert")
    let farenthideToCelciusConverterScoreLabel = CustomeSemiLabel(title: "result")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
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
        view.addSubview(farenthideToCelciususerTextField)
        farenthideToCelciususerTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciususerTextField.topAnchor.constraint(equalTo: farenthideToCelciusLabel.bottomAnchor, constant: 20),
            farenthideToCelciususerTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            farenthideToCelciususerTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            farenthideToCelciususerTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToCelciusConverterButton() {
        view.addSubview(farenthideToCelciusResultButton)
        farenthideToCelciusResultButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToCelciusResultButton.topAnchor.constraint(equalTo: farenthideToCelciususerTextField.bottomAnchor, constant: 40),
            farenthideToCelciusResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToCelciusResultButton.widthAnchor.constraint(equalToConstant: 120),
            farenthideToCelciusResultButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func farenthideToCelciusConfigureScoreLabel() {
        view.addSubview(farenthideToCelciusConverterScoreLabel)
        farenthideToCelciusConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            farenthideToCelciusConverterScoreLabel.topAnchor.constraint(equalTo: farenthideToCelciusResultButton.bottomAnchor, constant: 40),
            farenthideToCelciusConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
