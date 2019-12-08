//
//  customTabBar.swift
//  Aley
//
//  Created by zeyad on 12/8/19.
//  Copyright © 2019 zeyad. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
class customTabBar: UITabBar {
private var shapeLayer: CALayer?
    
    private func addShape() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.lightGray.cgColor
        shapeLayer.fillColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 3.0
        
        //The below 4 lines are for shadow above the bar. you can skip them if you do not want a shadow
        shapeLayer.shadowOffset = CGSize(width:0, height:0)
        shapeLayer.shadowRadius = 10
        shapeLayer.shadowColor = UIColor.gray.cgColor
        shapeLayer.shadowOpacity = 0.3
        
        
        shapeLayer.frame = self.frame
        shapeLayer.cornerRadius = 25
        shapeLayer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        shapeLayer.shouldRasterize = true
        shapeLayer.rasterizationScale = UIScreen.main.scale
        let shadowPath = UIBezierPath(roundedRect: shapeLayer.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 25, height: 25))
        let maskLayer = CAShapeLayer()
        let maskPath = CGMutablePath()
        maskPath.addRect(CGRect(x: -25, y: -25, width: shapeLayer.frame.width + 25, height: shapeLayer.frame.height + 25))
        maskPath.addPath(shadowPath.cgPath)
        maskLayer.path = maskPath
        maskLayer.fillRule = .evenOdd
        shapeLayer.mask = maskLayer

        // View here is the tab bar controller's view
        self.layer.addSublayer(shapeLayer)

        
        
        
        if let oldShapeLayer = self.shapeLayer {
            self.layer.replaceSublayer(oldShapeLayer, with: shapeLayer)
        } else {
            self.layer.insertSublayer(shapeLayer, at: 0)
        }
        self.shapeLayer = shapeLayer
    }
    override func draw(_ rect: CGRect) {
        self.addShape()
    }

}
