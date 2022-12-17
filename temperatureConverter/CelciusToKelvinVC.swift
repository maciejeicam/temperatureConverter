//
//  CtoKVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CelciusToKelvinVC: UIViewController {
    
    var titleLabel = UILabel()
    let celciusToKelvinLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        celciusToKelvin()
    }
    
    func celciusToKelvin(){
        view.addSubview(celciusToKelvinLabel)
        celciusToKelvinSubview()
        celciusToKelvinLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToKelvinLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            celciusToKelvinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            celciusToKelvinLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func celciusToKelvinSubview(){
        celciusToKelvinLabel.text = "To convert Celcius to Kelvin write a number"
        celciusToKelvinLabel.textColor = .systemBackground
        celciusToKelvinLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        celciusToKelvinLabel.textAlignment = .center
        celciusToKelvinLabel.lineBreakMode = .byWordWrapping
        celciusToKelvinLabel.numberOfLines = 0
    }
}
