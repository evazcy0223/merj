//
//  ViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/3/19.
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black
        
    }
    //takes you to the SLEEP INPUT SCREEN
    @IBAction func sleepButton(sender: UIButton) {
       performSegue(withIdentifier: "ToSleep", sender: self)

    }
    //takes you to the MEAL/SNACK INPUT SCREEN
    @IBAction func eatButton(sender: UIButton) {
        performSegue(withIdentifier: "ToEating", sender: self)
    }
    
    //takes you to the STORE SCREEN
    @IBAction func storeButton(sender: UIButton) {
        performSegue(withIdentifier: "ToStore", sender: self)
    }
    
    //
    
}



