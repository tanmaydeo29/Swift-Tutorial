import UIKit

// Type casting on variables

//String to Int
var number = "1000"
var result = (Int(number) ?? 0) + 10
print(result)

// Int to String
var str = 2999
var res = String(str) + "Hello"
print(res)

//Int to Float
print(100 + 10.9)  // Swift automatically dows it

//Float to Double
print(100.929 + 183.6372328732)  // Swift automatically does it



// Type casting in class

class Human{
    var name : String
    
    init(name : String){
        self.name = name
    }
    
    func run(){
        print("Human is running")
    }
}

class Male : Human{
    override init(name : String){
        super.init(name: name)
    }
    
    func play(){
        print("Male is playing")
    }
}


class Female : Human{
    override init(name : String){
        super.init(name: name)
    }
    
    func sing(){
        print("Female is singing")
    }
}

var male1 = Male(name: "Tanmay")
male1.play()
male1.run()

var male2  = Male(name : "Vaibhav") as Human  //Upcasting , now male2 is an object of human class , it can't access functions of male class
male2.run()
//male2.play() --> not allowed

var male3 = male2 as! Male  //Forceful downcasting from human to male
male3.run()
male3.play()

print()

var m = Male(name: "J")
var f = Female(name: "G")
var m2 = Male(name: "JD")
var f2 = Female(name: "GD")

var myArray : [Human] = [m , f , m2 , f2]

// Downcasting from an upcasted object
for myHuman in myArray{
    if let currentHuman = myHuman as? Male{  //If we can convert myHuman into Male
        print(currentHuman.play())
    }
    if let currentHuman = myHuman as? Female{ //If we can convert myHuman into Female
        print(currentHuman.sing())
    }
}
