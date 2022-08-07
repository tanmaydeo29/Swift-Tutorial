import UIKit

// Inheritance is a process where a new class is derived from an existing class , A class derived from another class is called as subclass and a class from which a subclass is derieved is called as suoer class


class person{
    var name = ""
}

class Employee: person{            // Employee class is a super class
    var salary = 0
    var role = ""
    
    func doWork(){
        print("Hi , my name is \(name) and I'm doing work")
    }
}

class Manager: Employee {       // Manager class is a subclass
    var teamSize = 0
    
    override func doWork() {
        super.doWork()
        print("Hi , my name is \(name) and I'm an \(role)")
    }
    
}

var e = Employee()    // This object e will only be able to access the properties of Employee and person class
e.name = "Raghav"
e.role = "Software Engineer"
e.doWork()


var m = Manager()  // This object m will be able to access the properties of person , Employee as well as Manager class
m.name = "Tanmay"
m.salary = 10000000
m.role = "It Manager"
m.teamSize = 100
m.doWork()



// Example 2

class Animal{              //Super class
    var sound = ""
    var isMammel = true
    var size = ""
    
    func intro(){
        print("Hi , I'm an animal and I like humans")
    }
    
}

class dog : Animal{   //Sub class
    override func intro() {
        print("Hi , I'm a dog and I \(sound) and" , (isMammel == true) ? "I'm a mammel" : "I'm not a mammel" , "and I'm a \(size) animal")
    }
}

var d = dog()
d.sound = "bark"
d.isMammel = true
d.size = "medium"
d.intro()

class cat : Animal{   // Subclass
    override func intro(){
        super.intro()    // super.intro() will execute the intro function of the superclass
        print("Hi , I'm a cat and I \(sound) and" , (isMammel == true) ? "I'm a mammel" : "I'm not a mammel" , "and I'm a \(size) animal")
    }
}

var c = cat()
c.sound = "meow"
c.isMammel = false
c.size = "small"
c.intro()
