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
    
    @LabelAttributes(text: "0", alignment: .center, textColor: .label)
    var timerCount: UILabel
    
    @ButtonAttributes(image: nil, title: "Ok", backgroundColor: UIColor.white.withAlphaComponent(0.75))
    var timerSelect: UIButton
    
    func setupSelectTimerView() {
        
        backgroundColor = .systemOrange
        
        addMultipleSubviews([timerTitle, timerStackView, timerSelect])
        
        timerStackView.addMultipleArrangedSubviews([leftButton, timerCount, rightButton])
        
        leftButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        rightButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        timerTitle.font = UIFont.boldSystemFont(ofSize: 13)
        timerSelect.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        timerSelect.layer.cornerRadius = Constants.cornerRadius.value
        
        NSLayoutConstraint.activate([
            timerTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            timerStackView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 4/5),
            timerStackView.topAnchor.constraint(equalTo: timerTitle.bottomAnchor, constant: Constants.largeSpacing.value),
            timerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            leftButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5),
            rightButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5),
            timerSelect.topAnchor.constraint(equalTo: timerStackView.bottomAnchor, constant: Constants.defaultSpacing.value),
            timerSelect.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerSelect.widthAnchor.constraint(equalTo: timerStackView.widthAnchor, multiplier: 3/5)
        ])
        
    }
    
}

