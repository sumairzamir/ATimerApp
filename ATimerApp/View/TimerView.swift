//
//  TimerView.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

class TimerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTimerView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupTimerView()
    }
    
    @LabelAttributes(text: "0", alignment: .center, textColor: .label)
    var timerLabel: UILabel
    
    @ButtonAttributes(image: UIImage(systemName: "xmark"), title: nil, backgroundColor: nil)
    var closeTimerView: UIButton
    
    @StackViewAttributes(axis: .horizontal, alignment: .fill, distribution: .fillEqually)
    var timerStackView: UIStackView
    
    @ButtonAttributes(image: UIImage(systemName: "playpause"), title: nil, backgroundColor: nil)
    var playButton: UIButton
    
    @ButtonAttributes(image: UIImage(systemName: "stop"), title: nil, backgroundColor: nil)
    var stopButton: UIButton
    
    func setupTimerView() {
        backgroundColor = .systemTeal
        
        timerLabel.font = UIFont.boldSystemFont(ofSize: 100)
        
        addMultipleSubviews([timerLabel, closeTimerView, timerStackView])
        
        timerStackView.addMultipleArrangedSubviews([playButton, stopButton])
        
        NSLayoutConstraint.activate([
            timerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            closeTimerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Constants.defaultSpacing.value),
            closeTimerView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -Constants.defaultSpacing.value),
            timerStackView.topAnchor.constraint(equalTo: timerLabel.bottomAnchor, constant: Constants.largeSpacing.value),
            timerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerStackView.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
