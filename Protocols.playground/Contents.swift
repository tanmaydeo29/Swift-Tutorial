import UIKit

// Protocol provides a blueprint of the methods and properties that can be adopted by the class
// Protocol can inherit multiple protocols

//Example 1

protocol carReq{
    var color : String {get set}
    func drive()
    func isAbs() -> Bool
    
}
class car{
    
}

class BMW: car , carReq{
    var color: String
    
    init(color : String) {
        self.color = color
    }
    
    func drive() {
        print("Hey , I'm BMW and i'm \(color) colored")
    }
    
    func isAbs() -> Bool {
        return true
    }
}

var carr = BMW(color: "Black")
carr.drive()
carr.isAbs()


//Example 2
protocol sum{
    func sum() -> Int
}

protocol multiplication{
    func multiply() -> Int
}

class number : sum , multiplication{
    var num1 : Int
    var num2 : Int
    
    init(num1 : Int , num2 : Int){
        self.num1 = num1
        self.num2 = num2
    }
    
    func sum() -> Int {
        let result = num1 + num2
        return result
    }
    
    func multiply() -> Int {
        let result = num1 * num2
        return result
    }
}

var a = number(num1: 20, num2: 4)
a.sum()
a.multiply()
