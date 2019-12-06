//
//  ViewController.swift
//  Aley
//
//  Created by zeyad on 12/5/19.
//  Copyright © 2019 zeyad. All rights reserved.
//

import UIKit

class SigninVC: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var logoHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var logoYConstraint: NSLayoutConstraint!
    @IBOutlet weak var extraViewYConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    //MARK: IBACTIONS
    @IBAction func signinTapped(_ sender: UIButton){
        
    }
    @IBAction func forgetPasswordTapped(_ sender: UIButton){
        
    }
    @IBAction func facebookTapped(_ sender: UIButton){
        
    }
    @IBAction func twitterTapped(_ sender: UIButton){
        
    }
    @IBAction func googleTapped(_ sender: UIButton){
        
    }
    @IBAction func registerTapped(_sender: UIButton){
        
    }
    
    //MARK: ANIMATION
    @IBAction func handleTap(recognizer:UITapGestureRecognizer) {
        self.view.isUserInteractionEnabled = false
        UIView.animate(withDuration: 0.8) {
            let logoHeight = self.logoHeightConstraint.constraintWithMultiplier(0.15)
            self.view.removeConstraint(self.logoHeightConstraint)
            self.view.addConstraint(logoHeight)
            let CentreY = self.logoYConstraint.constraintWithMultiplier(0.3)
            self.view.removeConstraint(self.logoYConstraint)
            self.view.addConstraint(CentreY)
            let extraCon = self.extraViewYConstraint.constraintWithMultiplier(1.28)
            self.view.removeConstraint(self.extraViewYConstraint)
            self.view.addConstraint(extraCon)
            self.view.layoutIfNeeded()
            self.logoHeightConstraint = logoHeight
            self.logoHeightConstraint = CentreY
        }
        
        
    
    }
    
}
//MARK: EXTENTIONS

// FOR CHANGE THE MULTIPLIER OF A CONSTRAINT
extension NSLayoutConstraint {
    func constraintWithMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem!, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: multiplier, constant: self.constant)
    }
}
