//
//  FtoCVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class FarenthideToCelciusVC: UIViewController {
    
    var titleLabel = UILabel()
    let farenthideToCelciusLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        view.backgroundColor = .systemBackground
        farenthideToCelcius()
    }
    
    func farenthideToCelcius(){
        view.addSubview(farenthideToCelciusLabel)
        farenthideToCelciusSubview()
        farenthideToCelciusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            farenthideToCelciusLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            farenthideToCelciusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            farenthideToCelciusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func farenthideToCelciusSubview(){
        farenthideToCelciusLabel.text = "To convert Farenthide to Celcius write a number"
        farenthideToCelciusLabel.textColor = .systemBackground
        farenthideToCelciusLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        farenthideToCelciusLabel.textAlignment = .center
        farenthideToCelciusLabel.lineBreakMode = .byWordWrapping
        farenthideToCelciusLabel.numberOfLines = 0
    }
}
