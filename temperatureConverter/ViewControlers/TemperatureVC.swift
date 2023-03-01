//
//  TemperatureVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 15/12/2022.
//

import UIKit
                    // dodac przycisk cofania (done) w konwerterze
class TemperatureVC: UIViewController {
    
    let titleLabel = CustomeTitleLabel(title: "Temperature Converter")
    let semiLabel = CustomeSemiLabel(title: "What You want to convert?")
    let celciusToFarenthideButton = DegreesButton(backgroundColor: .systemMint, title: "ºC ↔ ºF")
    let celciusToKelvinButton = DegreesButton(backgroundColor: .systemMint, title: "ºC ↔ ºK")
    let farenthideToCelciusButton = DegreesButton(backgroundColor: .systemMint, title: "ºF ↔ ºK")
    let padding: CGFloat = 20
    let heightPadding: CGFloat = 50
    let widthPadding: CGFloat = 120
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setupView()
        addButtonTarget()
    }
    
    private func setupView(){
        view.backgroundColor = .systemGray2
        configureTitleLabel()
        configureSemiLabel()
        configureCelciusToFarenthideButton()
        configureCelciustoKelvinButton()
        configureFarenthidetoCelciusButton()
    }
    
    @objc func celciusToFarenthideConverter(){
        let celciusToFarenthideDesVC = CelciusToFarenthideVC()
        celciusToFarenthideDesVC.modalTransitionStyle = .flipHorizontal
        present(celciusToFarenthideDesVC, animated: true)
    }
    
    @objc func celciusToKelvinConverter(){
        let celciusToKelvinDesVC = CelciusToKelvinVC()
        celciusToKelvinDesVC.modalTransitionStyle = .flipHorizontal
        present(celciusToKelvinDesVC, animated: true)
    }
    
    @objc func farenthideToCelciusConverter(){
        let farenthideToCelciusDesVC = FarenthideToKelvinVC()
        farenthideToCelciusDesVC.modalTransitionStyle = .flipHorizontal
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
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 2 * padding),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
    
    func configureSemiLabel() {
        view.addSubview(semiLabel)
        semiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            semiLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2 * padding),
            semiLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            semiLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
    
    func configureCelciusToFarenthideButton(){
        view.addSubview(celciusToFarenthideButton)
        celciusToFarenthideButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToFarenthideButton.widthAnchor.constraint(equalToConstant: widthPadding),
            celciusToFarenthideButton.heightAnchor.constraint(equalToConstant: heightPadding),
            celciusToFarenthideButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToFarenthideButton.topAnchor.constraint(equalTo: semiLabel.bottomAnchor, constant: 2 * padding)
        ])
    }
    
    func configureCelciustoKelvinButton(){
        view.addSubview(celciusToKelvinButton)
        celciusToKelvinButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            celciusToKelvinButton.widthAnchor.constraint(equalToConstant: widthPadding),
            celciusToKelvinButton.heightAnchor.constraint(equalToConstant: heightPadding),
            celciusToKelvinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            celciusToKelvinButton.topAnchor.constraint(equalTo: celciusToFarenthideButton.bottomAnchor, constant: padding)
        ])
    }
    
    func configureFarenthidetoCelciusButton(){
        view.addSubview(farenthideToCelciusButton)
        farenthideToCelciusButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusButton.widthAnchor.constraint(equalToConstant: widthPadding),
            farenthideToCelciusButton.heightAnchor.constraint(equalToConstant: heightPadding),
            farenthideToCelciusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            farenthideToCelciusButton.topAnchor.constraint(equalTo: celciusToKelvinButton.bottomAnchor, constant: padding)
        ])
    }
    
}
