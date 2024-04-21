//
//  ButtonSetup.swift
//  MagicCoffeeDemo
//
//  Created by Dana Sami Abu Eid on 21/04/2024.
//

import Foundation
import UIKit

struct ButtonSetup {
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.backgroundColor = .navyBlue
        button.layer.cornerRadius = 8
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
        return button
    }

    func makeForgetPswButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.layer.cornerRadius = 8
        button.backgroundColor = .clear
        button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 18)
        button.setTitleColor(.navyBlue, for: .normal)
        
        return button
    }

    
    
    
}
