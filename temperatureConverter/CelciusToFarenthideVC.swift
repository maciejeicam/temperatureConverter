//
//  CtoFVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class CelciusToFarenthideVC: UIViewController {
    
    var titleLabel = UILabel()
    let celciusToFarenthideLabel = UILabel()
    let userTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        userTextField.keyboardType = .numberPad
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        celciusToFarenthide()
    }
    
    func celciusToFarenthide(){
        view.addSubview(celciusToFarenthideLabel)
        celciustoFarenthideSubview()
        celciusToFarenthideLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToFarenthideLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToFarenthideLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciustoFarenthideSubview(){
        celciusToFarenthideLabel.text = "To convert Celcius to Farenthide write a number"
        celciusToFarenthideLabel.textColor = .systemBackground
        celciusToFarenthideLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        celciusToFarenthideLabel.textAlignment = .center
        celciusToFarenthideLabel.lineBreakMode = .byWordWrapping
        celciusToFarenthideLabel.numberOfLines = 0
    }
}
