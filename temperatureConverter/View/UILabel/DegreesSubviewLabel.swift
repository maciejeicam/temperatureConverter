//
//  DegreesSubview.swift
//  temperatureConverter
//
//  Created by Maciej Michalik on 19/12/2022.
//

import UIKit

class DegreesSubviewLabel: UILabel {
    override init(frame:CGRect){
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    convenience init(title:String) {
        self.init(frame: .zero)
        text = title
    }
    
    private func configure() {
        font = .systemFont(ofSize: 25, weight: .semibold)
        textAlignment = .center
        lineBreakMode = .byWordWrapping
        numberOfLines = 0
    }
    
}

