//
//  SleepViewController.swift
//  testingTesting
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
    
    override func viewDidLoad() {   //What happens when view loads
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = UIColor.systemPurple
            
        timeChange() //Function must be here to initialize label with time
        chaingingImage()
    }
   
   @IBAction func timeScroller(sender: UIDatePicker){   //Sets time selected
        timeChange()
        //timeScroller.layer.borderColor = UIColor.white
        //sender.layer.borderWidth = 1
    }
   
    @IBAction func dismissViewController(_sender: UIButton) //Go! button
    {
            var tempHP : Int = UserDefaults.standard.integer(forKey: "hpKey")
            
            if let presenter = presentingViewController as? ViewController
            {
                if(numHours < 7.5){
                    tempHP -= 20
                    UserDefaults.standard.set(tempHP, forKey: "hpKey")
                    
                    presenter.updatehealthLabel()
                                 
                }
            }
            dismiss(animated: true, completion: nil)
    }//dismissViewController BUTTON
    
}   //SLEEPVIEWCONTROLLER


