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
        degreesConfigure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    init(title:String) {
        super.init(frame: .zero)
        text = title
        degreesConfigure()
    }
    
    private func degreesConfigure() {
        font = .systemFont(ofSize: 25, weight: .semibold)
        textAlignment = .center
        lineBreakMode = .byWordWrapping
        numberOfLines = 0
    }
    
}

