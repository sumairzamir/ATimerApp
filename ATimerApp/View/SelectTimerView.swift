//
//  SelectTimerView.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

class SelectTimerView: UIView, UITextFieldDelegate {
    
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
    
    @TextFieldAttributes(text: nil, backgroundColor: nil)
    var timerMinutesInput: UITextField
    
    @TextFieldAttributes(text: nil, backgroundColor: nil)
    var timerSecondsInput: UITextField
    
    @LabelAttributes(text: ":", alignment: .center, textColor: .label)
    var colonLabel: UILabel
    
    @ButtonAttributes(image: nil, title: "Ok", backgroundColor: UIColor.white.withAlphaComponent(0.75))
    var timerSelect: UIButton
    
    func setupSelectTimerView() {
        
        backgroundColor = .systemOrange
        
        addMultipleSubviews([timerTitle, timerStackView, timerSelect])
        
        timerStackView.addMultipleArrangedSubviews([leftButton, timerMinutesInput, colonLabel, timerSecondsInput, rightButton])
        timerMinutesInput.placeholder = "0"
        timerSecondsInput.placeholder = "00"
        
        leftButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        rightButton.tintColor = UIColor.white.withAlphaComponent(0.5)
        timerTitle.font = UIFont.boldSystemFont(ofSize: 24)
        colonLabel.font = UIFont.systemFont(ofSize: 50)
        timerMinutesInput.font = UIFont.systemFont(ofSize: 50)
        timerMinutesInput.backgroundColor = .systemPink
        timerMinutesInput.keyboardType = .numberPad
        timerSecondsInput.font = UIFont.systemFont(ofSize: 50)
        timerSecondsInput.backgroundColor = .systemGray
        timerSecondsInput.keyboardType = .numberPad
        timerSelect.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        timerSelect.layer.cornerRadius = Constants.cornerRadius.value
        timerMinutesInput.delegate = self
        
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
            timerSelect.widthAnchor.constraint(equalTo: timerStackView.widthAnchor, multiplier: 3/5),
            timerMinutesInput.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5*0.9),
            timerSecondsInput.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/5*0.9)
        ])
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let minuteMaxLength = 1
        let minuteEntry = timerMinutesInput.text ?? ""
        guard let stringRangeMinutes = Range(range, in: minuteEntry) else { return false }
        let enteredMinutes = minuteEntry.replacingCharacters(in: stringRangeMinutes, with: string)
        return enteredMinutes.count <= minuteMaxLength
    }
    
}

