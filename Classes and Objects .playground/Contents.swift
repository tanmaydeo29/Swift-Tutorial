import UIKit

var greeting = "Hello, playground"

class Employee{     //Class is a template / blueprint of object ie what properties object will contain
    var name : String = ""
    var salary : Int = 0
    var id : Int = 0                    // Properties
    var role : String = ""
    
    func intro(){                       // Method
        print("Hello my name is \(name) , I'm an \(role) and my employee id is \(id)")
    }
}
    

// Employee 1

var emp1 = Employee()  // Object -> instance of class

emp1.name = "Tanmay"
emp1.salary = 100000
emp1.id = 55052992
emp1.role = "Ios Developer"

emp1.intro()

//print(emp1.name)
//print(emp1.salary)
//print(emp1.id)
//print(emp1.role)


// Employee 2

var emp2 = Employee()  // Object

emp2.name = "Tom"
emp2.salary = 50000
emp2.role = "Android Developer"
emp2.id = 55052912

emp2.intro()

//print(emp2.name)
//print(emp2.salary)
//print(emp2.id)
//print(emp2.role)


print()


class cars{
    var cost = 0
    var brand = ""
    var type = ""
    
    func carss(){
        print("The cost of \(type) car of \(brand) is \(cost)")
    }
}

var car1 = cars()  //Object

car1.cost = 100000
car1.brand = "Hyundai"
car1.type = "sedan"

car1.carss()

//print(car1.cost)
//print(car1.brand)
//print(car1.type)


var car2 = cars()

car2.cost = 600000
car2.brand = "Mercedes"
car2.type = "sedan"

car2.carss()

//print(car2.cost)
//print(car2.brand)
//print(car2.type)


var car3 = cars()

car3.cost = 200000
car3.brand = "Honda"
car3.type = "SUV"

car3.carss()

//print(car3.cost)
//print(car3.brand)
//print(car3.type)
