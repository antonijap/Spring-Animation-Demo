//
//  ViewController.swift
//  Animation
//
//  Created by Antonija Pek on 07/05/16.
//  Copyright © 2016 Antonija Pek. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var loginButton: DesignableButton!
    @IBOutlet weak var emailField: DesignableTextField!
    @IBOutlet weak var passwordField: DesignableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.addTarget(self, action: #selector(ViewController.animate), forControlEvents: .TouchDown)
        loginButton.addTarget(self, action: #selector(ViewController.animate), forControlEvents: .TouchDragEnter)
        loginButton.addTarget(self, action: #selector(ViewController.animate), forControlEvents: .TouchUpInside)
        loginButton.addTarget(self, action: #selector(ViewController.animate), forControlEvents: .TouchDragExit)

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        loginButton.animation = "slideRight"
        loginButton.duration = 2.0
        loginButton.animate()
        
        emailField.animation = "slideDown"
        emailField.duration = 2.0
        emailField.animate()
        
        passwordField.animation = "slideUp"
        passwordField.duration = 2.0
        passwordField.animate()
    }
    
    func animate() {
        loginButton.animation = "pop"
        loginButton.animate()
    }

}

