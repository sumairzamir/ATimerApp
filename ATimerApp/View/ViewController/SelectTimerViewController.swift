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
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .portraitUpsideDown]
    }
    
    func timerSelectTapEvent() {
        selectTimerView.timerSelect.addTarget(self, action: #selector(timerSelectTapped), for: .touchUpInside)
    }
    
    @objc func timerSelectTapped() {
        let timerViewController = TimerViewController()
        timerViewController.modalPresentationStyle = .fullScreen
        present(timerViewController, animated: true) {
            print("Timer select tapped")
        }
    }
    
}

