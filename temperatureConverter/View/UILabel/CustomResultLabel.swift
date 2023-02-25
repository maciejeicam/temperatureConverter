//
//  CustomResult.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 27/12/2022.
//

import UIKit

class CustomResultLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureResultLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: Int) {
        self.init(frame: .zero)
    }
    
    private func configureResultLabel() {
        font = .systemFont(ofSize: 35, weight: .bold)
        textAlignment = .center
    }
    
}
