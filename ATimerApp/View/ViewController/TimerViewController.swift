//
//  TimerViewController.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 28/10/2020.
//

import UIKit

class TimerViewController: UIViewController {

    let timerView = TimerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = timerView
        closeTimerViewEvent()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    func closeTimerViewEvent() {
        timerView.closeTimerView.addTarget(self, action: #selector(closeTimerViewTapped), for: .touchUpInside)
    }
    
    @objc func closeTimerViewTapped() {
        dismiss(animated: true) {
            print("Timer view dismissed")
        }
    }

}
