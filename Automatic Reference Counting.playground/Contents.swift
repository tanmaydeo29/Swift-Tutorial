import UIKit

//ARC is used to intialize and deinitizalize the system resources thereby memory spaces used by the class instance
// agar object use nhi ho raha hai to use memory se nikal dega arc

class person{
    var name : String
    var carName : car?
    
    init(name : String) {
        print("init called for person class")
        self.name = name
    }
    
    func printName(){
        print("Name is \(name)")
    }
    
    deinit{
        print("deinit called for person class")
    }
}

//var obj : person?
//
//if(1 == 1){
//    let person1 = person(name : "Tanmay")
//    obj = person1
//    person1.printName()
//}
//
//obj = nil

class car{
    var carName : String
    var name : person?
    
    init(carName : String){
        print("init called for job class")
        self.carName = carName
    }
    
    deinit{
        print("deinit called for job class")
    }
}

if(1 == 1){
    let obj1 = person(name : "Tanmay")
    let obj2 = car(carName: "Mercedes")

    obj1.carName = obj2                     // obj1(Tanmay) -> carName -> obj2(Mercedes)
    obj2.name = obj1                        // obj2(Mercedes) -> name -> obj1(Tanmay)       ie creating a strong reference
}
