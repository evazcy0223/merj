//
//  ChoosePetViewController.swift
//  testingTesting
//
//  Created by Jessica Martinez Marquez on 12/13/19.
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class ChoosePetViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the presented navigationController and the view controller it contains
        let navigationController = segue.destination
        navigationController.modalPresentationStyle = .fullScreen
           
    }
    
    @IBAction func snakeButton(sender: UIButton)
    {
        var money: Int = 100
        var hp : Int = 50
        let type : String = "snake"
        print("been clicked")
        
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
    }
    
    @IBAction func catButton(sender: UIButton)
    {
        var money: Int = 100
        var hp : Int = 50
        let type : String = "cat"
        print("been clicked")
             
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
    
    }
    
    @IBAction func penguinButton(sender: UIButton)
    {
       var money: Int = 100
        var hp : Int = 50
        let type : String = "penguin"
        print("been clicked")
                   
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
       
    }
    
    @IBAction func toMain(sender: UIButton)
    {
        performSegue(withIdentifier: "ToMain", sender: self)
    }

}
