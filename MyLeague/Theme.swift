//
//  Theme.swift
//  MyLeague
//
//  Created by Watson, Gabi on 8/2/18.
//  Copyright © 2018 Watson, Gabi. All rights reserved.
//
import Foundation
import UIKit

enum Color {
    case coreBlue
    case darkGray
    case lightGray
    case steelBlue
    case black
    case white
}

extension Color {
    var value: UIColor {
        var instanceColor = UIColor.clear
        
        switch self {
        case .coreBlue:
            instanceColor = UIColor(red: 0/255, green: 160/255, blue: 223/255, alpha: 1)
        case .darkGray:
            instanceColor = UIColor(red: 66/255, green: 85/255, blue: 99/255, alpha: 1)
        case .lightGray:
            instanceColor = UIColor(red: 152/255, green: 164/255, blue: 174/255, alpha: 1)
        case .steelBlue:
            instanceColor = UIColor(red: 107/255, green: 164/255, blue: 184/255, alpha: 1)
        case .black:
            instanceColor = UIColor(red: 107/255, green: 164/255, blue: 184/255, alpha: 1)
        case .white:
            instanceColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        }
        
        return instanceColor
    }
}


