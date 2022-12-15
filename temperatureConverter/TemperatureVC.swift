//
//  TemperatureVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class TemperatureVC: UIViewController {
    
    let titleLabel = UILabel()
    let whatToConvert = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureWhatToConvert()
    }
    func configureTitleLabel() {
            view.addSubview(titleLabel)
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.text = "Temperature Converter"
        titleLabel.font = .systemFont(ofSize: 25, weight: .heavy)
            titleLabel.textAlignment = .center
            
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
                ])
    }
    func configureWhatToConvert(){
        view.addSubview(whatToConvert)
        whatToConvert.translatesAutoresizingMaskIntoConstraints = false
        whatToConvert.text = "What You want to convert?"
        whatToConvert.font = .systemFont(ofSize: 20, weight: .semibold)
        whatToConvert.textAlignment = .center
        
        NSLayoutConstraint.activate([
        
            whatToConvert.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 160),
            whatToConvert.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            whatToConvert.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    func CFConverterButton(){
         
        
    }
}
