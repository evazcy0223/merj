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
              
           if let presenter = presentingViewController as? ViewController{
           if (presenter.mainPet.kind == "s") //will likely need to write :::: presenter.mainPet.kind
              {
              //show image of snake
              petImage.image = UIImage(named: "Pet3_eat")
              
              }
              else if (presenter.mainPet.kind == "p")
              {
              //show image of penguin
               petImage.image = UIImage(named: "Pet2_eat")
              }
              else
              {
              //show cat
              petImage.image = UIImage(named: "Pet1_eat")
              }
          }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.systemOrange
        chaingingImage()
        
        
    }
    
    @IBAction func mealButton(sender: UIButton) {
        if let presenter = presentingViewController as? ViewController
        {
            presenter.mainPet.foodEaten = presenter.mainPet.foodEaten + meal
            //random assignment for coins or health
            print("from meal button")
            print(presenter.mainPet.foodEaten)
            
          randomNum = Int.random(in: 1..<3)
            print("random number")
            print(randomNum)
            
            if (randomNum == 1)
            {
                choice = "coins"
                presenter.mainPet.budget = presenter.mainPet.budget + 3
            }
            if (randomNum == 2)
            {
                choice = "health"
                presenter.mainPet.health = presenter.mainPet.health + 5
            }
            
        } //dismiss(animated: true, completion: nil)
        
    
    
        let alertController = UIAlertController(title: "Give pet meal?", message: choice, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func snackButton(sender: UIButton) {
              
        if let presenter = presentingViewController as? ViewController
        {
            presenter.mainPet.foodEaten = presenter.mainPet.foodEaten + snack
            print("from snack button")
            print(presenter.mainPet.foodEaten)
            
            randomNum = Int.random(in: 1..<3)
            print("random number")
            print(randomNum)
            
            if (randomNum == 1)
            {
                choice = "coins"
                presenter.mainPet.budget = presenter.mainPet.budget + 3
                presenter.updateCoinsLabel()
            }
            if (randomNum == 2)
            {
                choice = "health"
                presenter.mainPet.health = presenter.mainPet.health + 2
                presenter.updatehealthLabel()
            }
        }
        //dismiss(animated: true, completion: nil)
        
    let alertController = UIAlertController(title: "Give pet snack?", message: choice, preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
}

