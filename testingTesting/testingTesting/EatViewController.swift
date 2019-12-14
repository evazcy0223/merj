//
//  SecondViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/4/19.
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class EatViewController: UIViewController {
    
    var snack:Double = 1    //value of a snack
    var meal:Double = 3     //value of a meal
    
    //random variable
    
    var randomNum:Int = 0
    var choice: String?
    
       
    @IBOutlet weak var petImage: UIImageView!
    
    func chaingingImage(){
              //checking what kind of pet to show
        var temp : String
        temp = UserDefaults.standard.string(forKey: "typeKey") ?? "Unknown"
        print(temp)
              
        if (temp == "snake") //will likely need to write :::: presenter.mainPet.kind
              {
              //show image of snake
              petImage.image = UIImage(named: "Pet3_eat")
              
              }
              else if (temp == "penguin")
              {
              //show image of penguin
               petImage.image = UIImage(named: "Pet2_eat")
              }
              else if(temp == "cat")
              {
              //show cat
              petImage.image = UIImage(named: "Pet1_eat")
              }

       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.systemOrange
        chaingingImage()
        
        
    }
    
    @IBAction func mealButton(sender: UIButton) {
        
      //  var tempFood : Double = UserDefaults.standard.double(forKey: "foodKey")
        var tempCoin : Int = UserDefaults.standard.integer(forKey: "moneyKey")
        var tempHP : Int = UserDefaults.standard.integer(forKey: "hpKey")
        
          randomNum = Int.random(in: 1..<3)
            print("random number")
            print(randomNum)
          
         if let presenter = presentingViewController as? ViewController
         {
            if (randomNum == 1)
            {
                choice = "You got coins!"
                tempCoin = tempCoin + 3
                UserDefaults.standard.set(tempCoin, forKey: "moneyKey")
                presenter.updateCoinsLabel()
                
            }
            if (randomNum == 2)
            {
                choice = "You got health!"
                tempHP = tempHP + 5
                UserDefaults.standard.set(tempHP, forKey: "hpKey")
                presenter.updatehealthLabel()
            }
        
        }
    
        let alertController = UIAlertController(title: "Give pet meal?", message: choice, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func snackButton(sender: UIButton) {
              
      //  var tempFood : Double = UserDefaults.standard.double(forKey: "foodKey")
            var tempCoin : Int = UserDefaults.standard.integer(forKey: "moneyKey")
            var tempHP : Int = UserDefaults.standard.integer(forKey: "hpKey")
            
              randomNum = Int.random(in: 1..<3)
                print("random number")
                print(randomNum)
                
        
         if let presenter = presentingViewController as? ViewController
         {
                if (randomNum == 1)
                {
                    choice = "You got coins!"
                    tempCoin = tempCoin + 3
                    UserDefaults.standard.set(tempCoin, forKey: "moneyKey")
                    presenter.updateCoinsLabel()
                }
                if (randomNum == 2)
                {
                    choice = "You got health!"
                    tempHP = tempHP + 2
                    UserDefaults.standard.set(tempHP, forKey: "hpKey")
                    presenter.updatehealthLabel()
                }
        }
        
    let alertController = UIAlertController(title: "Give pet snack?", message: choice, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
}

