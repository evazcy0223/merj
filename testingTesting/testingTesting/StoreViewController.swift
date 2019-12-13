//
//  StoreViewController.swift
//  testingTesting
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController {
    
    var costMedicine:Int = 10
    
    var petBudget: Int = 0
    
    var numBottles: Int = 1       //number of bottles
    
    
     @IBOutlet weak var medicineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.systemTeal
        
    }
   
    @IBAction func medicineStepper(sender: UIStepper) {
        medicineLabel!.text = String(Int(sender.value))
        numBottles = Int(sender.value)
        print(numBottles)
       }

        @IBAction func tryBuy(_sender: UIButton){
        if let presenter = presentingViewController as? ViewController      //transfer data between main view and store view
        {//just for ONE purchase
                petBudget = presenter.mainPet.budget

            //slider variable
            if (petBudget >= (costMedicine * numBottles))  //checks if pet has enough coins
            {
                    //ONE medicine gives 5 HP back
                    presenter.mainPet.health = presenter.mainPet.health + (5*numBottles) // 5 HP * thisPurchase (number of bottles purchased)
                    presenter.mainPet.budget = presenter.mainPet.budget - (costMedicine * numBottles) //costMedicine(number purchased)
        
                    //Pop up to confirm purchase
                let alertController = UIAlertController(title: ("Are you sure you want to buy " + String(numBottles) + " bottles of medicine?"), message: nil, preferredStyle: UIAlertController.Style.alert)
                
                alertController.addAction(UIAlertAction(title: "Yes!", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
                
                presenter.updateCoinsLabel()
                presenter.updatehealthLabel()
                }
                
                else{
                //something that prints couldn't complete purchase to user
                    let alertController = UIAlertController(title: ("You don't have enough coins to buy " + String(numBottles) + " bottles of medicine!"), message: nil, preferredStyle: UIAlertController.Style.alert)
                    
                    alertController.addAction(UIAlertAction(title: "Oh no!", style: UIAlertAction.Style.default, handler: nil))
                    present(alertController, animated: true, completion: nil)
                    }
            
                print("from Store view")
                print("health: ")
                print(presenter.mainPet.health)
                print("budget: ")
                print(presenter.mainPet.budget)
            }
            
    }
    
    
    
    
    
    
}//STOREVIEW CONTROLLER
