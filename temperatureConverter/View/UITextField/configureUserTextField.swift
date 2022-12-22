//
//  UserTextField.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 21/12/2022.
//

import UIKit

class ConfigureUserTextField :UITextField{
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUserTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureUserTextField() {
        textAlignment = .center
        becomeFirstResponder()
        keyboardType = .numberPad
    }
    }

 
