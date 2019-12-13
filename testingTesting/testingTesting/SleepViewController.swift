//
//  SleepViewController.swift
//  testingTesting
//
//  Created by Mariafernanda Hernandez on 12/4/19.
//  Copyright © 2019 Pixel Pets. All rights reserved.
//

import UIKit

class SleepViewController: UIViewController {

    var numHours:Double = 0
    
//Scroller code
    func timeChange(){
           let formatter = DateComponentsFormatter() //Instance of input formatter
           formatter.zeroFormattingBehavior = [.pad]
           formatter.allowedUnits = [.hour, .minute]       //Only hours and minutes are displayed
           labelTime.text = formatter.string(from: sleepPicker.countDownDuration)
        
        numHours = sleepPicker.countDownDuration / 3600     //converts seconds into hours
        
           //converts the input time into a string and displays it in the label
           //countDownDuration is a double
        //view.endEditing(true)
       }
    
    @IBOutlet weak var sleepPicker: UIDatePicker!   //Initializes picker (countDownDuration is the variable (double))
    @IBOutlet weak var labelTime: UILabel!  //Initializes label
       
    @IBOutlet weak var petImage: UIImageView!
    
    func chaingingImage(){
           //checking what kind of pet to show
           
        if let presenter = presentingViewController as? ViewController{
        if (presenter.mainPet.kind == "s") //will likely need to write :::: presenter.mainPet.kind
           {
           //show image of snake
           petImage.image = UIImage(named: "Pet3_sleep")
           
           }
           else if (presenter.mainPet.kind == "p")
           {
           //show image of penguin
            petImage.image = UIImage(named: "Pet2_sleep")
           }
           else
           {
           //show cat
           petImage.image = UIImage(named: "Pet1_sleep")
           }
       }
    }
    
    override func viewDidLoad() {   //What happens when view loads
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.systemPurple
            
        timeChange() //Function must be here to initialize label with time
        chaingingImage()
        
    }
   
   @IBAction func timeScroller(sender: UIDatePicker){   //Sets time selected
        timeChange()
    }
   
    @IBAction func dismissViewController(_sender: UIButton) //Go! button
        {
            if let presenter = presentingViewController as? ViewController
            {
                
                print(presenter.mainPet.sleepTime)  //should print 0
                
                presenter.mainPet.goToSleep(numSleep: sleepPicker.countDownDuration)
                
                if(numHours < 7.5){
                    presenter.mainPet.health -= 20  //subtracts 20 HP
                    presenter.updatehealthLabel()
                    print(presenter.mainPet.health)
                }
                
                //presenter.mainPet.sleepTime = presenter.mainPet.sleepTime + sleepPicker.countDownDuration
                print("from Sleep view after clicking Go!")
                print(presenter.mainPet.sleepTime)
                print(presenter.mainPet.state)
            }
            dismiss(animated: true, completion: nil)
    }//dismissViewController BUTTON
    
}   //SLEEPVIEWCONTROLLER


