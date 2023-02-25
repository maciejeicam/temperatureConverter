//
//  CustomSemiLabel.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 16/12/2022.
//

import UIKit

class CustomeSemiLabel: UILabel{
    override init(frame: CGRect){
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String) {
        super.init(frame: .zero)
        text = title
        configure()
    }
    
    private func configure(){
        font = .systemFont(ofSize: 20, weight: .semibold)
        textAlignment = .center
    }
    
}
