//
//  ViewController.swift
//  testingTesting
//  Copyright © 2019 Mariafernanda Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    var mainPet = Pet(kind: "snake")
    
    @IBOutlet weak var healthLabel: UILabel?
    
    @IBOutlet weak var coinLabel: UILabel?
    
    func updatehealthLabel(){
        healthLabel?.text = String(UserDefaults.standard.integer(forKey: "hpKey")) + "/50"  //turns it into string
    }
    
    func updateCoinsLabel(){
        coinLabel?.text = String(UserDefaults.standard.integer(forKey: "moneyKey")) //turns it into string
    }

    //background image goes here
    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.brown
        setBackground()
        chaingingImage()
        
        updatehealthLabel()
        updateCoinsLabel()
        
    }
    
    func setBackground(){   //Autolayout background
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        backgroundImageView.image = UIImage(named: "testbackground")
    }
    
    //let petImage = UIImageView()
    
    @IBOutlet weak var petImage: UIImageView!
    
    func chaingingImage(){
        
        //checking what kind of pet to show
        var temp : String
        temp = UserDefaults.standard.string(forKey: "typeKey") ?? "Unknown"
        print(temp)
        
        if (temp == "snake") //will likely need to write :::: presenter.mainPet.kind
        {
        //show image of snake
        petImage.image = UIImage(named: "Pet3")
        
        }
        else if (temp == "penguin")
        {
        //show image of penguin
         petImage.image = UIImage(named: "Pet2")
        }
        else if (temp == "cat")
        {
        //show cat
        petImage.image = UIImage(named: "Pet1")
        }
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



