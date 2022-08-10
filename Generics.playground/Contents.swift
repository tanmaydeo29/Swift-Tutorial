import UIKit

//Generics -> Are used avoid duplication and reuse the code
// It allows to create a single function or class that can be used with different data types

//Example1

//Here we are writing 2 different functions print_something but with different datatype parameter but generic allows us to use the same function for different datatypes


//func print_something(data : Int){
//    print("Hello i'm a \(data)")
//}

//func print_something(data : String){
//    print("Hello i'm a \(data)")
//}

func print_something<T>(data : T){
    print("Hello i'm a \(data)")
}

print_something(data: 4)
print_something(data: "String")


//Example 2
//Type constraints
func add_two<T : Numeric>(num1 : T , num2 : T) -> T{
    return num2 + num1
}

add_two(num1: 3, num2: 4)
add_two(num1 : 3.232 , num2 : 3231)

// Example3

//Generic class
class Information<T>{
    var data : T
    
    init(data :  T){
        self.data = data
    }
    
    func getData() -> T{
        return self.data
    }
}

var obj1 = Information(data: "String_data")
obj1.getData()
var obj2 = Information(data : 89)
obj2.getData()
