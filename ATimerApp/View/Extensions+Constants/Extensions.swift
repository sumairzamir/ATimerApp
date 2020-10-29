//
//  Extensions.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

extension UIView {
    
    func addMultipleSubviews(_ subviews: [UIView]) {
        for subview in subviews {
            addSubview(subview)
        }
    }
}


extension UIStackView {
    
    func addMultipleArrangedSubviews(_ subviews: [UIView]) {
        for subview in subviews {
            addArrangedSubview(subview)
        }
    }
}
