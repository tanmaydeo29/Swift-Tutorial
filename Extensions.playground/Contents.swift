import UIKit

//Extensions are used for adding some extra functionalities for the class , struct , enumerations and protocols
// Note -> Extensions can just add new functionalities but they can't override existing functions
// In extensions we just have to add new functions , we can't add new properties and all

class car{
    var brand : String
    var name : String
    
    init(brand : String , name : String){
        self.brand = brand
        self.name = name
    }
    
    func drive(){
        print("I'm driving")
    }
    
    func stop(){
        print("I'm stoping")
    }
}

extension car {
    
    func openDoors(){                   //Added new functionality for the car ie openDoors
        print("I'm opening doors")
    }
}

var car1 = car(brand: "BMW", name: "5 series")
car1.drive()
car1.stop()
car1.openDoors()

//

class person{
    
    var name : String
    
    init(name : String){
        self.name = name
    }
    
    func play(){
        print("\(name) is playing")
    }
    
    func studying(){
        print("\(name) is studying")
    }
    
}

extension person{
    func code(){
        print("\(name) is coding")
    }
}

var person1 = person(name: "Tanmay")
person1.play()
person1.studying()
person1.code()
