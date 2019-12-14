//
//  ChoosePetViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/13/19.
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
    //    var food : Double = 0
      //  var sleep : Double = 0
        print("been clicked")
                         
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
     //   UserDefaults.standard.set(food, forKey: "foodKey")
      //  UserDefaults.standard.set(sleep, forKey: "sleepKey")
    }
    
    @IBAction func catButton(sender: UIButton)
    {
        var money: Int = 100
        let hp : Int = 50
        let type : String = "cat"
     //   var food : Double = 0
     //   var sleep : Double = 0
        print("been clicked")
                         
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
      //  UserDefaults.standard.set(food, forKey: "foodKey")
     //   UserDefaults.standard.set(sleep, forKey: "sleepKey")
    }
    
    @IBAction func penguinButton(sender: UIButton)
    {
       var money: Int = 100
        var hp : Int = 50
        let type : String = "penguin"
   //     var food : Double = 0
    //    var sleep : Double = 0
        print("been clicked")
                   
        UserDefaults.standard.set(money, forKey: "moneyKey")
        UserDefaults.standard.set(hp, forKey: "hpKey")
        UserDefaults.standard.set(type, forKey: "typeKey")
    //    UserDefaults.standard.set(food, forKey: "foodKey")
      //  UserDefaults.standard.set(sleep, forKey: "sleepKey")
       
    }
    
    @IBAction func toMain(sender: UIButton)
    {
        performSegue(withIdentifier: "ToMain", sender: self)
    }

}
