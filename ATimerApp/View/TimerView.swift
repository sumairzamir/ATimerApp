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
    
    @ButtonAttributes(image: UIImage(systemName: "xmark"), title: nil, backgroundColor: nil)
    var closeTimerView: UIButton
    
    func setupTimerView() {
        backgroundColor = .systemTeal
        
        addSubview(closeTimerView)
        
        NSLayoutConstraint.activate([
            closeTimerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            closeTimerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
