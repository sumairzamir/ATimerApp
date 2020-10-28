//
//  ViewController.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 27/10/2020.
//

import UIKit

class SelectTimerViewController: UIViewController {
    
    let selectTimerView = SelectTimerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = selectTimerView
        timerSelectTapEvent()
    }
    
    func timerSelectTapEvent() {
        selectTimerView.timerSelect.addTarget(self, action: #selector(timerSelectTapped), for: .touchUpInside)
    }
    
    @objc func timerSelectTapped() {
        present(TimerViewController(), animated: true) {
            print("Timer select tapped")
        }
    }
    
}

