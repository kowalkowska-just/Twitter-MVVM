//
//  Extension-UIColor.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 12/01/2022.
//

import UIKit

extension UIColor {
    
    static func rbg(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat? = 1) -> UIColor {
        return  UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha ?? 1)
    }
    
    static let mainBlue = UIColor.rbg(red: 29, green: 161, blue: 242)
    static let customRed = UIColor.rbg(red: 220, green: 78, blue: 65)
    static let customPurple = UIColor.rbg(red: 128, green: 87, blue: 194)
    
}
