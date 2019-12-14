//
//  LaunchViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/13/19.
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController
{
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.brown
           
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the presented navigationController and the view controller it contains
            let navigationController = segue.destination
              navigationController.modalPresentationStyle = .fullScreen
        
    }

    //NEW USER button clicked
    @IBAction func newUserButton(sender: UIButton)
    {
        //delete the information in the Old UserDefaults
        
        UserDefaults.standard.removeObject(forKey: "moneyKey")
        UserDefaults.standard.removeObject(forKey: "hpKey")
        UserDefaults.standard.removeObject(forKey: "typeKey")
        
        //will then send you to the  picking pet screen
        print("launch")
       performSegue(withIdentifier: "ToChoosePet", sender: self)

    }
    
    @IBAction func returningUserButton(sender: UIButton)
    {
        //will send you to the regular View Controller screen
        performSegue(withIdentifier: "ToMain", sender: self)
    }

}
