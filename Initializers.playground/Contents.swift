import UIKit

// This is
// In structure there is a default initializer whereas in class there is no default initializer
// Swift uses the initializer we have created for the class and structure


class person{
    var name = ""
    
//    init(){                       // Initializers without parameters
//        name = "Tanmay"
//    }
    
    init(_ name : String){
        self.name = name
    }
}

class Employee: person{
    var salary = 0
    var role = ""
    
    override init(_ name : String){    // We cant overide inits from the superclass ie (Cannot change the parameters)
        super.init(name)
        self.salary = 390029
    }
}

var emp1 = Employee("Vaibhav")
print(emp1.name)


class Manager: Employee{
    var teamSize = 0
}

var mg1 = Manager("Tim")
print(mg1.name)
print(mg1.salary)


//Example 2

// For structures swift defines a defaukt init methods
struct item{
    var name : String
    var price : Int
    var quantity : Int
    var total_price : Int
    
    init(name : String , price : Int , quantity : Int){
        self.name = name
        self.price = price
        self.quantity = quantity
        self.total_price = quantity * price
    }
}

var item1 = item(name: "Iphone", price: 50000, quantity: 2)
print(item1.total_price)



class items{
    var name : String = ""
    var price : Int = 0
    var quantity : Int = 0
    var total_price : Int = 0
    
    init(name : String , price : Int , quantity : Int){
        self.name = name
        self.price = price
        self.quantity = quantity
        self.total_price = quantity * price
    }
}

var items1 = items(name: "Macbook", price: 200000, quantity: 3)
print(items1.name)

// Example 3

class Wall{
    var length : Double
    var height : Double
    
    init(length : Double , height : Double){
        self.length = length
        self.height = height
    }
    
    func calculateArea() -> Double{
        return length * height
    }
}

var wall1 = Wall(length: 10.5, height: 11.5)
var wall2 = Wall(length: 12.6, height: 13.5)

print("Area of wall 1 is \(wall1.calculateArea())")
print("Area of wall 2 is \(wall2.calculateArea())")
