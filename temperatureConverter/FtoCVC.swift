//
//  FtoCVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class FtoCVC: UIViewController {

    var titleLabel = UILabel()
    let rulesFC = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        rulesToConvertFC()
    }
    func rulesToConvertFC(){
        view.addSubview(rulesFC)
        farenthideToCelciusSubview()
        rulesFC.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            rulesFC.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            rulesFC.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            rulesFC.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }

    func farenthideToCelciusSubview(){
        rulesFC.text = "To convert Farenthide to Celcius write a number"
        rulesFC.textColor = .systemBackground
        rulesFC.font = .systemFont(ofSize: 40, weight: .semibold)
        rulesFC.textAlignment = .center
        rulesFC.lineBreakMode = .byWordWrapping
        rulesFC.numberOfLines = 0
    }
}
