import UIKit

// In general when we define a variable or constant we have to give that a value like var a = 1 , it cant be empty
// But if want to make some variables empty , we have to make them as optional

//var a : Int = nil  --> This wont work

//var a : Int? = nil  --> This will work

// AN optional allows a variable or constant to store a nil value

// Before you access an optional , check if it contains nil or not before trying
// Before you use the object of an optional variable or constant , you must first unwrap the optional

class area{
    var length : Int
    var breadth : Int
    
    init(length : Int , breadth : Int){
        self.length = length
        self.breadth = breadth
    }
    
    func area_of_rect() -> Int{
        return length * breadth
    }
}

var area1 : area? = area(length: 49, breadth: 28)
//print(area1.area_of_rect())   --> Gives me error for not unwrapping

if(area1 != nil){
    print(area1!.area_of_rect())
}


// Optional Binding

if let area = area1{                // if nil , will go inside but not run the print
    print(area1!.area_of_rect())
}

// Optional chaining
area1?.area_of_rect()  // Directly checks if the object is nil or not without an if statement


// We can also write
// c can store a nil value but it is wrapped
var c : String?  // This is recommended because it has a type safe checking(xcode will force you to check if the object is nil or not)

// d can store a nil value but it is unwrapped
var d : String! // Not recommended


