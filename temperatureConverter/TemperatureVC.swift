//
//  TemperatureVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit

class TemperatureVC: UIViewController {
    
    let titleLabel = CustomeTitleLabel(title: "Temperature Converter")
    let semiLabel = CustomeSemiLabel(title: "What You want to convert?")
    let celciusToFarenthideButton = CelciusToFarenthideButton(backgroundColor: .systemTeal, title: "ºC --> ºF")
    let celciusToKelvinButton = CelciusToKelvinButton(backgroundColor: .systemTeal, title: "ºC --> ºK")
    let farenthideToCelciusButton = FarenthideToCelciusButton(backgroundColor: .systemTeal, title: "ºF --> ºC")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addButtonTarget()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureSemiLabel()
        configureCelciusToFarenthideButton()
        configureCelciustoKelvinButton()
        configureFarenthidetoCelciusButton()
    }
    
    @objc func celciusToFarenthideConverter(){
        let celciusToFarenthideDesVC = CelciusToFarenthideVC()
        celciusToFarenthideDesVC.modalTransitionStyle = .flipHorizontal
        celciusToFarenthideDesVC.view.backgroundColor = .systemOrange
        present(celciusToFarenthideDesVC, animated: true)
    }
    
    @objc func celciusToKelvinConverter(){
        let celciusToKelvinDesVC = CelciusToKelvinVC()
        celciusToKelvinDesVC.modalTransitionStyle = .flipHorizontal
        celciusToKelvinDesVC.view.backgroundColor = .systemMint
        present(celciusToKelvinDesVC, animated: true)
    }
    
    @objc func farenthideToCelciusConverter(){
        let farenthideToCelciusDesVC = FarenthideToCelciusVC()
        farenthideToCelciusDesVC.modalTransitionStyle = .flipHorizontal
        farenthideToCelciusDesVC.view.backgroundColor = .systemPurple
        present(farenthideToCelciusDesVC, animated: true)
    }
    
    func addButtonTarget(){
        celciusToFarenthideButton.addTarget(self, action: #selector(celciusToFarenthideConverter), for: .touchUpInside)
        celciusToKelvinButton.addTarget(self, action: #selector(celciusToKelvinConverter), for: .touchUpInside)
        farenthideToCelciusButton.addTarget(self, action: #selector(farenthideToCelciusConverter), for: .touchUpInside)
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configureSemiLabel() {
        view.addSubview(semiLabel)
        semiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            semiLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            semiLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            semiLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
    }
    
    func configureCelciusToFarenthideButton(){
        view.addSubview(celciusToFarenthideButton)
        celciusToFarenthideButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideButton.widthAnchor.constraint(equalToConstant: 120),
            celciusToFarenthideButton.heightAnchor.constraint(equalToConstant: 50),
            celciusToFarenthideButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToFarenthideButton.topAnchor.constraint(equalTo: semiLabel.bottomAnchor, constant: 40)
        ])
    }
    
    func configureCelciustoKelvinButton(){
        view.addSubview(celciusToKelvinButton)
        celciusToKelvinButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToKelvinButton.widthAnchor.constraint(equalToConstant: 120),
            celciusToKelvinButton.heightAnchor.constraint(equalToConstant: 50),
            celciusToKelvinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToKelvinButton.topAnchor.constraint(equalTo: celciusToFarenthideButton.bottomAnchor, constant: 20)
        ])
    }
    
    func configureFarenthidetoCelciusButton(){
        view.addSubview(farenthideToCelciusButton)
        farenthideToCelciusButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusButton.widthAnchor.constraint(equalToConstant: 120),
            farenthideToCelciusButton.heightAnchor.constraint(equalToConstant: 50),
            farenthideToCelciusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToCelciusButton.topAnchor.constraint(equalTo: celciusToKelvinButton.bottomAnchor, constant: 20)
        ])
    }
}
