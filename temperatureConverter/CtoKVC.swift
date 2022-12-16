//
//  CtoKVC.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CtoKVC: UIViewController {
    
    var titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    private func setupView(){
        view.backgroundColor = .systemBackground
    }
}
