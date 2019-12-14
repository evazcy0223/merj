import UIKit

class Pet {
    enum State {
        case hungry
        case sleepy
        case healthy
        case unhealthy
    }
    
    var state : State
    //var name : String
    var sleepTime : Double
    var foodEaten : Double  //Original : Int
    var kind : String
    var color : Character
    var health : Int
    var budget : Int
    
    init(kind: String) {
       // self.name = name
        self.kind = kind
        self.sleepTime = 0
        self.foodEaten = 0
        self.color = "B"
        self.state = .healthy
        self.health = 50
        self.budget = 50
    }
    
    func feedPet(numFood: Double) {
        self.foodEaten += numFood
        print(foodEaten)
    }
    
    func goToSleep(numSleep: Double) {
        self.sleepTime += numSleep
    }
    
    func Update(time: Double) -> Bool {
        if time > self.sleepTime && time <= self.foodEaten {
            if self.state == .sleepy {
                return false
            }
            else {
                self.state = .sleepy
                return true
            }
        }
        else if time > self.foodEaten && time <= self.sleepTime {
            if self.state == .hungry {
                return false
            }
            else {
                self.state = .hungry
                return true
            }
        }
        else if time > self.sleepTime && time > self.foodEaten {
            if self.state == .unhealthy {
                return false
            }
            else {
                self.state = .unhealthy
                return true
            }
        }
        else {
            if self.state == .healthy {
                return false
            }
            else {
                self.state = .healthy
                return true
            }
        }
    }
    
}
