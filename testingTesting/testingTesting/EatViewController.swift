//
//  SecondViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/4/19.
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class EatViewController: UIViewController {

    var testPet = Pet(name: "King", kind: "d")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.gray
        
        
    }
    
    @IBAction func mealButton(sender: UIButton) {
        testPet.feedPet(numFood: 10)
        
        print("hello")
        /*
        let alertController = UIAlertController(title: "Give pet meal", message: nil, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)*/
    }
    
    @IBAction func snackButton(sender: UIButton) {
              
            let alertController = UIAlertController(title: "Give pet snack", message: nil, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
   
    
}

