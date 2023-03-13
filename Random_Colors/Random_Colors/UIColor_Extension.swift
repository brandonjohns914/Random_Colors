//
//  UIColor_Extension.swift
//  Random_Colors
//
//  Created by Brandon Johns on 3/9/23.
//


import UIKit

extension UIColor
{
   static func Create_Random_Color() -> UIColor
    {
        let random_Color = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
        
        return random_Color
    }
}
