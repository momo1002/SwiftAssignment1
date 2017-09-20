//
//  ViewController.swift
//  ProgrammaticView
//
//  Created by Derrick Park on 2017-05-24.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let framingView: UIView = UIView(frame: CGRect.zero)
    let squareButton: UIButton = UIButton(type: .system)
    let portraitButton: UIButton = UIButton(type: .system)
    let landscapeButton: UIButton = UIButton(type: .system)
    
    let blueBox1: UIView = UIView(frame: CGRect.zero)
    let blueBox2: UIView = UIView(frame: CGRect.zero)
    let blueBox3: UIView = UIView(frame: CGRect.zero)
    let purpleBox: UIView = UIView(frame: CGRect.zero)
    let orangeBox1: UIView = UIView(frame: CGRect.zero)
    let orangeBox2: UIView = UIView(frame: CGRect.zero)
    let redBox: UIView = UIView(frame: CGRect.zero)


    
    var framingViewHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var framingViewWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var blueBox1HeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var blueBox1WidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var blueBox2HeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var blueBox2WidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var blueBox3HeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var blueBox3WidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var purpleBoxHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var purpleBoxWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var orangeBox1HeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var orangeBox1WidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var orangeBox2HeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var orangeBox2WidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    var redBoxHeightConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    var redBoxWidthConstraint: NSLayoutConstraint = NSLayoutConstraint.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Three bottuns
        squareButton.setTitle("Square", for: .normal)
        squareButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(squareButton)
        squareButton.translatesAutoresizingMaskIntoConstraints = false
        
        portraitButton.setTitle("Portrait", for: .normal)
        portraitButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(portraitButton)
        portraitButton.translatesAutoresizingMaskIntoConstraints = false
        
        landscapeButton.setTitle("Landscape", for: .normal)
        landscapeButton.addTarget(self, action: #selector(resizeFramingView), for: .touchUpInside)
        view.addSubview(landscapeButton)
        landscapeButton.translatesAutoresizingMaskIntoConstraints = false
        

        
        // Green transform box
        framingView.translatesAutoresizingMaskIntoConstraints = false
        framingView.backgroundColor = UIColor.green
        view.addSubview(framingView)
        
        // Blue box
        blueBox1.translatesAutoresizingMaskIntoConstraints = false
        blueBox1.backgroundColor = UIColor.blue
        framingView.addSubview(blueBox1)
        
        blueBox2.translatesAutoresizingMaskIntoConstraints = false
        blueBox2.backgroundColor = UIColor.blue
        framingView.addSubview(blueBox2)
        
        blueBox3.translatesAutoresizingMaskIntoConstraints = false
        blueBox3.backgroundColor = UIColor.blue
        framingView.addSubview(blueBox3)


        
        // Purple box
        purpleBox.translatesAutoresizingMaskIntoConstraints = false
        purpleBox.backgroundColor = UIColor.purple
        framingView.addSubview(purpleBox)
        
        // Orange box
        orangeBox1.translatesAutoresizingMaskIntoConstraints = false
        orangeBox1.backgroundColor = UIColor.orange
        redBox.addSubview(orangeBox1)
        
        orangeBox2.translatesAutoresizingMaskIntoConstraints = false
        orangeBox2.backgroundColor = UIColor.orange
        redBox.addSubview(orangeBox2)
        
        // Red box
        redBox.translatesAutoresizingMaskIntoConstraints = false
        redBox.backgroundColor = UIColor.red
        framingView.addSubview(redBox)
        

        
        let buttonsHorizontalContraintsFormat = "|[squareButton(==portraitButton)][portraitButton(==landscapeButton)][landscapeButton]|"
        
        let buttonsHorizontalContraints = NSLayoutConstraint.constraints(withVisualFormat: buttonsHorizontalContraintsFormat, options: .alignAllCenterY, metrics: nil, views: ["squareButton":squareButton, "portraitButton":portraitButton, "landscapeButton":landscapeButton])
        
        NSLayoutConstraint.activate(buttonsHorizontalContraints)
        
        let squareButtonBottomConstraint = NSLayoutConstraint.init(item: squareButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -50.0)
        squareButtonBottomConstraint.isActive = true
        
        
        // function for green box
        let framingViewCenterXContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        framingViewCenterXContraint.isActive = true

        let framingViewCenterYContraint = NSLayoutConstraint.init(item: framingView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        framingViewCenterYContraint.isActive = true
        
        framingViewHeightConstraint = NSLayoutConstraint.init(item: framingView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewHeightConstraint.isActive = true
        
        framingViewWidthConstraint = NSLayoutConstraint.init(item: framingView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 500.0)
        framingViewWidthConstraint.isActive = true
        
        // function for blue box
        let blueBox1CenterXContraint = NSLayoutConstraint.init(item: blueBox1, attribute: .centerX, relatedBy: .equal, toItem: framingView, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        blueBox1CenterXContraint.isActive = true
        
        let blueBox1CenterYContraint = NSLayoutConstraint.init(item: blueBox1, attribute: .centerY, relatedBy: .equal, toItem: framingView, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        blueBox1CenterYContraint.isActive = true
        
        blueBox1HeightConstraint = NSLayoutConstraint.init(item: blueBox1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox1HeightConstraint.isActive = true
        
        blueBox1WidthConstraint = NSLayoutConstraint.init(item: blueBox1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox1WidthConstraint.isActive = true
        
        
        let blueBox2CenterXContraint = NSLayoutConstraint.init(item: blueBox2, attribute: .centerX, relatedBy: .equal, toItem: blueBox1, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        blueBox2CenterXContraint.isActive = true
        
        let blueBox2CenterYContraint = NSLayoutConstraint.init(item: blueBox2, attribute: .centerY, relatedBy: .equal, toItem: blueBox1, attribute: .centerY, multiplier: 1.0, constant: -80.0)
        blueBox2CenterYContraint.isActive = true
        
        blueBox2HeightConstraint = NSLayoutConstraint.init(item: blueBox2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox2HeightConstraint.isActive = true
        
        blueBox2WidthConstraint = NSLayoutConstraint.init(item: blueBox2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox2WidthConstraint.isActive = true
        
        
        let blueBox3CenterXContraint = NSLayoutConstraint.init(item: blueBox3, attribute: .centerX, relatedBy: .equal, toItem: blueBox1, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        blueBox3CenterXContraint.isActive = true
        
        let blueBox3CenterYContraint = NSLayoutConstraint.init(item: blueBox3, attribute: .centerY, relatedBy: .equal, toItem: blueBox1, attribute: .centerY, multiplier: 1.0, constant: 80.0)
        blueBox3CenterYContraint.isActive = true
        
        blueBox3HeightConstraint = NSLayoutConstraint.init(item: blueBox3, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox3HeightConstraint.isActive = true
        
        blueBox3WidthConstraint = NSLayoutConstraint.init(item: blueBox3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        blueBox3WidthConstraint.isActive = true
        
        
        // function for purple box
        let purpleBoxRightContraint = NSLayoutConstraint.init(item: purpleBox, attribute: .right, relatedBy: .equal, toItem: framingView, attribute: .right, multiplier: 1.0, constant: -20.0)
        purpleBoxRightContraint.isActive = true
        
        let purpleBoxBottomContraint = NSLayoutConstraint.init(item: purpleBox, attribute: .bottom, relatedBy: .equal, toItem: framingView, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        purpleBoxBottomContraint.isActive = true

        
        purpleBoxHeightConstraint = NSLayoutConstraint.init(item: purpleBox, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        purpleBoxHeightConstraint.isActive = true
        
        purpleBoxWidthConstraint = NSLayoutConstraint.init(item: purpleBox, attribute: .width, relatedBy: .equal, toItem: framingView, attribute: .width, multiplier: (305.0/500.0), constant: 0)
        purpleBoxWidthConstraint.isActive = true
        
        
        // function for redBox
        let redBoxRightContraint = NSLayoutConstraint.init(item: redBox, attribute: .right, relatedBy: .equal, toItem: framingView, attribute: .right, multiplier: 1.0, constant: -20.0)
        redBoxRightContraint.isActive = true
        
        let redBoxTopContraint = NSLayoutConstraint.init(item: redBox, attribute: .top, relatedBy: .equal, toItem: framingView, attribute: .top, multiplier: 1.0, constant: 20.0)
        redBoxTopContraint.isActive = true
        
        redBoxHeightConstraint = NSLayoutConstraint.init(item: redBox, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        redBoxHeightConstraint.isActive = true
        
        redBoxWidthConstraint = NSLayoutConstraint.init(item: redBox, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 135.0)
        redBoxWidthConstraint.isActive = true
        
        
        // function for orangeBox inside redBox
        let orangeBox1LeftContraint = NSLayoutConstraint.init(item: orangeBox1, attribute: .left, relatedBy: .equal, toItem: redBox, attribute: .left, multiplier: 1.0, constant: 5.0)
        orangeBox1LeftContraint.isActive = true
        
        let orangeBox1TopContraint = NSLayoutConstraint.init(item: orangeBox1, attribute: .top, relatedBy: .equal, toItem: redBox, attribute: .top, multiplier: 1.0, constant: 10.0)
        orangeBox1TopContraint.isActive = true
        
        orangeBox1HeightConstraint = NSLayoutConstraint.init(item: orangeBox1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        orangeBox1HeightConstraint.isActive = true
        
        orangeBox1WidthConstraint = NSLayoutConstraint.init(item: orangeBox1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 70.0)
        orangeBox1WidthConstraint.isActive = true
        
        //2
        let orangeBox2RightContraint = NSLayoutConstraint.init(item: orangeBox2, attribute: .right, relatedBy: .equal, toItem: redBox, attribute: .right, multiplier: 1.0, constant: -5.0)
        orangeBox2RightContraint.isActive = true
        
        let orangeBox2TopContraint = NSLayoutConstraint.init(item: orangeBox2, attribute: .top, relatedBy: .equal, toItem: redBox, attribute: .top, multiplier: 1.0, constant: 10.0)
        orangeBox2TopContraint.isActive = true
        
        orangeBox2HeightConstraint = NSLayoutConstraint.init(item: orangeBox2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0)
        orangeBox2HeightConstraint.isActive = true
        
        orangeBox2WidthConstraint = NSLayoutConstraint.init(item: orangeBox2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 50.0)
        orangeBox2WidthConstraint.isActive = true


    
    }

    func resizeFramingView(_ sender: UIButton) {
        var newWidth: CGFloat = 0.0
        var newHeight: CGFloat = 0.0
        if (sender == self.squareButton) {
            newWidth = 500.0
            newHeight = 500.0
        } else if (sender == self.portraitButton) {
            newWidth = 350.0
            newHeight = 550.0
        } else if (sender == self.landscapeButton) {
            newWidth = 900.0
            newHeight = 300.0
        }
        
        UIView.animate(withDuration: 2.0) {
            self.framingViewHeightConstraint.constant = newHeight
            self.framingViewWidthConstraint.constant = newWidth
            self.view.layoutIfNeeded()
        }
    }
}

