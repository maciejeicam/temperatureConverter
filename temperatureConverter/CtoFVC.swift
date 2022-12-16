//
//  CtoFVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class CtoFVC: UIViewController {
    
    var titleLabel = UILabel()
    let rulesCF = UILabel()
    let yourTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewCF()
        yourTextField.keyboardType = .numberPad
    }
    
    private func setupViewCF(){
        view.backgroundColor = .systemBackground
        rulesToConvertCF()
    }
    
    func rulesToConvertCF(){
        view.addSubview(rulesCF)
        celciustoFarenthideSubview()
        rulesCF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rulesCF.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            rulesCF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            rulesCF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciustoFarenthideSubview(){
        rulesCF.text = "To convert Celcius to Farenthide write a number"
        rulesCF.textColor = .systemBackground
        rulesCF.font = .systemFont(ofSize: 40, weight: .semibold)
        rulesCF.textAlignment = .center
        rulesCF.lineBreakMode = .byWordWrapping
        rulesCF.numberOfLines = 0
    }
}
