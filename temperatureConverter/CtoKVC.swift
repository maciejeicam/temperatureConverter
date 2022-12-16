//
//  CtoKVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CtoKVC: UIViewController {

    var titleLabel = UILabel()
    let rulesCK = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewCK()


    }
    private func setupViewCK(){
        view.backgroundColor = .systemBackground
        rulesToConvertCK()
    }

    func rulesToConvertCK(){
        view.addSubview(rulesCK)
        celciusToKelvinSubview()
        rulesCK.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            rulesCK.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            rulesCK.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            rulesCK.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }

    func celciusToKelvinSubview(){
        rulesCK.text = "To convert Celcius to Kelvin write a number"
        rulesCK.textColor = .systemBackground
        rulesCK.font = .systemFont(ofSize: 40, weight: .semibold)
        rulesCK.textAlignment = .center
        rulesCK.lineBreakMode = .byWordWrapping
        rulesCK.numberOfLines = 0
    }
}
