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
    
    func setupTimerView() {
        backgroundColor = .systemTeal
        
        timerLabel.font = UIFont.boldSystemFont(ofSize: 100)
        
        addMultipleSubviews([timerLabel, closeTimerView])
        
        NSLayoutConstraint.activate([
            timerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            timerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            closeTimerView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            closeTimerView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
}
