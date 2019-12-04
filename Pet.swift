import UIKit

/*
enum PetStates {
    case hungry
    case sleepy
    case healthy
}
*/

class Pet {
    var name : String
    var healthy : Bool
    var sleepTime : Int
    var foodEaten : Int
    var kind : Character
    var color : Character
    
    init(name: String, kind: Character) {
        self.name = name
        self.kind = kind
        self.healthy = true
        self.sleepTime = 0
        self.foodEaten = 0
        self.color = "B"
        print("Pet created!\n")
    }
    
    func feedPet(numFood: Int) {
        self.foodEaten += numFood
    }
    
    func goToSleep(numSleep: Int) {
        self.sleepTime += numSleep
    }
    
    func Update(time: Int) -> Bool {
        if time > self.sleepTime && time <= self.foodEaten {
            print("I am sleepy\n")
            // change state to sleepy
            return true
        }
        else if time > self.foodEaten && time <= self.sleepTime {
            print("I am hungry\n")
            // change state to hungry
            return true
        }
        else if time > self.sleepTime && time > self.foodEaten {
            print("I am unhealthy\n")
            // change state to unhealthy
            return true
        }
        else {
            print("I am healthy\n")
            // change state to healthy
            return false
        }
    }
}

// making a checkpoint for Pet class

let pet1 = Pet(name: "King", kind: "d")

pet1.feedPet(numFood: 5)
print("I have eaten", pet1.foodEaten, "things\n")

pet1.goToSleep(numSleep: 8)
print("I have slept", pet1.sleepTime, "hours\n")

var somethingChanged : Bool
somethingChanged = pet1.Update(time: 2)
somethingChanged = pet1.Update(time: 6)
somethingChanged = pet1.Update(time: 10)
