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
    let farenthideToCelciusResultButton = DegreesButton(backgroundColor: .systemMint, title: "ºF →ºC")
    var celciusToFarenthideConverterScoreLabel = CustomResultLabel()
    var celciusToFarenthideToCelciustext = ""
    let padding: CGFloat = 20
    let heightpadding: CGFloat = 50
    let widthPadding: CGFloat = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        celciusToFarenthideToCelciusButtonConfigure()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureCelciusToFarenthideLabel()
        celciusToFarenthideConfigureUserText()
        celciusToFarenthideConfigureConverterButton()
        farenthideToCelciusConfigureConverterButton()
        celciusToFarenthideConfigureScoreLabel()
        configureDoneButton()
        celciusToFarenthideUserTextField.delegate = self
    }
    
    @objc func celciusToFarenthideConfigureButton() {
        let celciusToFarenthideSum = ((Float(celciusToFarenthideToCelciustext)! * 1.8 ) + 32)
        let roundedCelciusToFarenthideSum = round(celciusToFarenthideSum * 100) / 100.0
        celciusToFarenthideConverterScoreLabel.text = "\(roundedCelciusToFarenthideSum) ºF"
    }
    
    @objc func farenthideToCelciusConfigureButton() {
        let farenthideToCelciusSum = (((Float(celciusToFarenthideToCelciustext)! - 32 ) * 5 ) / 9)
        let roundedFarenthideToCelciusSum = round(farenthideToCelciusSum * 100) / 100.0
        celciusToFarenthideConverterScoreLabel.text = "\(roundedFarenthideToCelciusSum) ºC"
    }
    
    func configureDoneButton() {
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    func celciusToFarenthideToCelciusButtonConfigure() {
        celciusToFarenthideResultButton.addTarget(self, action: #selector(celciusToFarenthideConfigureButton), for: .touchUpInside)
        farenthideToCelciusResultButton.addTarget(self, action: #selector(farenthideToCelciusConfigureButton), for: .touchUpInside)
    }
    
    func configureCelciusToFarenthideLabel(){
        view.addSubview(celciusToFarenthideToCelciusLabel)
        celciusToFarenthideToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            celciusToFarenthideToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            celciusToFarenthideToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    @objc func textDidChange(sender: UITextField) {
        celciusToFarenthideToCelciustext = sender.text!
    }
    
    func celciusToFarenthideConfigureUserText (){
        view.addSubview(celciusToFarenthideUserTextField)
        celciusToFarenthideUserTextField.translatesAutoresizingMaskIntoConstraints = false
        celciusToFarenthideUserTextField.addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        NSLayoutConstraint.activate([
            celciusToFarenthideUserTextField.topAnchor.constraint(equalTo: celciusToFarenthideToCelciusLabel.bottomAnchor, constant: padding),
            celciusToFarenthideUserTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            celciusToFarenthideUserTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            celciusToFarenthideUserTextField.heightAnchor.constraint(equalToConstant: heightpadding)
        ])
    }
    
    func celciusToFarenthideConfigureConverterButton() {
        view.addSubview(celciusToFarenthideResultButton)
        celciusToFarenthideResultButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideResultButton.topAnchor.constraint(equalTo: celciusToFarenthideUserTextField.bottomAnchor, constant: 2 * padding),
            celciusToFarenthideResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToFarenthideResultButton.widthAnchor.constraint(equalToConstant: widthPadding),
            celciusToFarenthideResultButton.heightAnchor.constraint(equalToConstant: heightpadding)
        ])
    }
    
    func farenthideToCelciusConfigureConverterButton() {
        view.addSubview(farenthideToCelciusResultButton)
        farenthideToCelciusResultButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusResultButton.topAnchor.constraint(equalTo: celciusToFarenthideResultButton.bottomAnchor, constant: 2 * padding),
            farenthideToCelciusResultButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToCelciusResultButton.widthAnchor.constraint(equalToConstant: widthPadding),
            farenthideToCelciusResultButton.heightAnchor.constraint(equalToConstant: heightpadding)
        ])
    }
    
    func celciusToFarenthideConfigureScoreLabel() {
        view.addSubview(celciusToFarenthideConverterScoreLabel)
        celciusToFarenthideConverterScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideConverterScoreLabel.topAnchor.constraint(equalTo: farenthideToCelciusResultButton.bottomAnchor, constant: 2 * padding),
            celciusToFarenthideConverterScoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
