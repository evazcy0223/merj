import UIKit

class User {

    var name : String
    var money : Int
    var adultPetCount : Int
    var deadPetCount : Int
    var currentPet : Pet
    var foodCount : Int
    var medicineCount : Int
    var kindList: [Character] = ["S", "R", "N"]
    var unhealthyDays : Int
    
    init() {
        var petName : String
        var kindIdx : Int
        //Not sure whether it works
        print("What is your name? ")
        let self.name = readLine()
        print("You have a new pet! What is its name? ")
        let petName = readLine()
        let kindIdx = Int.random(in: 0...2)
        self.currentPet = Pet(petName, self.kindList[kindIdx])
        //
        self.adultPetCount = 0
        self.deadPetCount = 0
        self.foodCount = 0
        self.medicineCount = 0
        self.unhealthyDays = 0
    }
    
    func addFood(foodNum : int){
        self.foodCount += foodNum
    }
    
    func feedPet(numFood : Int) {
        if self.foodCount >= numFood {
            currentPet.feedPet(numFood)
        }
    }
    
    func getNewPet(){
        print("What is your name? ")
        let self.name = readLine()
        print("You have a new pet! What is its name? ")
        let petName = readLine()
        let kindIdx = Int.random(in: 0...2)
        self.currentPet = Pet(petName, self.kindList[kindIdx])
    }
    
    func Update(time: Int) {
        if currentPet.Update(time) == false {
            self.unhealthyDays += 1
        }
        
        if self.unhealthyDays == 3 {
            self.deadPetCount += 1
            self.getNewPet()
            
        }
    }
    
    //func Shop()
    
}

// Questions to ask
// 1. This class requires a lot of inputs from the user. How to manage it? Since this is a game, we basically need a while loop. Where should I put this while loop?
// 2. How to put the output of this class on screen? 
