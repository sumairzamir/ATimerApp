//
//  SelectTimerView.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

class SelectTimerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSelectTimerView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSelectTimerView()
    }
    
    @LabelAttributes(text: "Set timer", alignment: .center, textColor: .label)
    var timerTitle: UILabel
    
    @StackViewAttributes(axis: .horizontal, alignment: .fill, distribution: .fill)
    var timerStackView: UIStackView
    
    @ButtonAttributes(image: UIImage(systemName: "arrowtriangle.left.fill"), title: nil, backgroundColor: nil)
    var leftButton: UIButton
    
    @ButtonAttributes(image: UIImage(systemName: "arrowtriangle.right.fill"), title: nil, backgroundColor: nil)
    var rightButton: UIButton
    
    @TextViewAttributes(text: "0", backgroundColor: nil)
    var timerCount: UITextView
    
    @ButtonAttributes(image: nil, title: "Ok", backgroundColor: UIColor.white.withAlphaComponent(0.75))
    var timerSelect: UIButton
    
    func setupSelectTimerView() {
        
        backgroundColor = .systemOrange
        
        addMultipleSubviews([timerTitle, timerStackView, timerSelect])
        
        timerStackView.addMultipleArrangedSubviews([leftButton, timerCount, rightButton])
        
        leftButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        rightButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        timerTitle.font = UIFont.boldSystemFont(ofSize: 24)
        timerCount.font = UIFont.systemFont(ofSize: 50)
        timerCount.textAlignment = .center
        timerSelect.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        timerSelect.layer.cornerRadius = Constants.cornerRadius.value
        
        NSLayoutConstraint.activate([
            timerStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 4/5),
            timerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            timerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerStackView.heightAnchor.constraint(equalToConstant: 75),
            timerTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerTitle.bottomAnchor.constraint(equalTo: timerStackView.topAnchor, constant: -Constants.defaultSpacing.value),
            leftButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5),
            rightButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5),
            timerSelect.topAnchor.constraint(equalTo: timerStackView.bottomAnchor, constant: Constants.defaultSpacing.value),
            timerSelect.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerSelect.widthAnchor.constraint(equalTo: timerStackView.widthAnchor, multiplier: 3/5)
        ])
        
    }
    
}

