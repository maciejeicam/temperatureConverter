//
//  CtoFButton.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class DegreesButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: CGRect .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
    func configure() {
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        setTitleColor(.white, for: .normal)
    }
    
}
