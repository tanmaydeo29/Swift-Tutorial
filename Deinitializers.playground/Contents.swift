import UIKit

// Deinitializers are used to deallocate class instances when they're actually not needed
// Deinitializers are only used with class and not with struct
// Each class can have only one deinitializer

var at_most = 10

class person{
    var name : String
    var height : Int
    var weight : Int
    
    init(name : String , height : Int , weight : Int){
        self.name = name
        self.height = height
        self.weight = weight
    }
    
    deinit{
        print("\(name) , I'm done now")
    }
}
// After running a loop till at_most the person1 will be printed and the deinit will be called

for _ in 1...at_most{
    let person1 = person(name: "Tanmay", height: 180, weight: 67)
    print(person1.name)
    print(person1.weight)
}
 // Here person1 object is created and after the loop , it's use is over so the deinit function is called by swift to deallocate the person1 each time
