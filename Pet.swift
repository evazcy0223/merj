import UIKit

class Pet {
    enum State {
        case hungry
        case sleepy
        case healthy
        case unhealthy
    }
    
    var state : State
    var name : String
    var sleepTime : Int
    var foodEaten : Int
    var kind : Character
    var color : Character
    
    init(name: String, kind: Character) {
        self.name = name
        self.kind = kind
        self.sleepTime = 0
        self.foodEaten = 0
        self.color = "B"
        self.state = .healthy
    }
    
    func feedPet(numFood: Int) {
        self.foodEaten += numFood
    }
    
    func goToSleep(numSleep: Int) {
        self.sleepTime += numSleep
    }
    
    func Update(time: Int) -> Bool {
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
