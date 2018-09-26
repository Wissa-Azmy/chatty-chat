//
//  GradientView.swift
//  smash-chat
//
//  Created by Admin on 9/23/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor : UIColor = UIColor.blue {
        didSet{
            self.setNeedsLayout()
        }
    }
   
    @IBInspectable var bottomColor : UIColor = #colorLiteral(red: 0.5019607843, green: 0, blue: 0.2509803922, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor , bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }

}
