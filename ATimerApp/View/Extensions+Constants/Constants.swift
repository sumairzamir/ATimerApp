//
//  Constants.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 29/10/2020.
//

import UIKit

enum Constants {
    case defaultSpacing
    case largeSpacing
    case cornerRadius
    
    var value: CGFloat {
        switch self {
        case .cornerRadius:
            return 10
        case .largeSpacing:
            return 15
        case .defaultSpacing:
            return 10
        }
    }
}
