import UIKit

class person{
    var name : String
    
    init(name : String){
        self.name = name
    }
}

class Employee : person{
    var salary = 0
    var role = ""
    override init(name: String) {
        super.init(name : name)
        self.role = "Analyst"
    }
    
    func doWork(){
        print("Hi my name is \(name) and I'm an \(role)")
    }
}

class Manager: Employee{
    var teamSize = 5
    var bonus : Int{
        return teamSize * 1000         //This is the property , wherein we can directly return the value of bonus
    }
    
    init(name : String , team : Int){
        super.init(name: name)
        teamSize = team
    }
    
    override func doWork() {
        super.doWork()
        print("Hi I'm managing people")
    }
    
}

var manager = Manager(name: "Tanmay", team: 6)
print(manager.bonus)
