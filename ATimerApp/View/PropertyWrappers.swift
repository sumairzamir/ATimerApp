//
//  PropertyWrappers.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

@propertyWrapper
struct StackViewAttributes {
    
    var wrappedValue: UIStackView
    
    init(axis: NSLayoutConstraint.Axis, alignment: UIStackView.Alignment, distribution: UIStackView.Distribution) {
        wrappedValue = UIStackView()
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        wrappedValue.axis = axis
        wrappedValue.alignment = alignment
        wrappedValue.distribution = distribution
    }
    
}

@propertyWrapper
struct LabelAttributes {
    
    var wrappedValue: UILabel
    
    init(text: String?, alignment: NSTextAlignment, textColor: UIColor) {
        wrappedValue = UILabel()
        wrappedValue.text = text
        wrappedValue.font = UIFont.systemFont(ofSize: 13)
        wrappedValue.textAlignment = alignment
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        wrappedValue.textColor = textColor
    }
    
}

@propertyWrapper
struct ButtonAttributes {
    
    var wrappedValue: UIButton
    
    init(image: UIImage?, title: String?, backgroundColor: UIColor?) {
        wrappedValue = UIButton()
        wrappedValue.setImage(image, for: .normal)
        wrappedValue.setTitle(title, for: .normal)
        wrappedValue.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        wrappedValue.setTitleColor(.label, for: .normal)
        wrappedValue.backgroundColor = backgroundColor
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
