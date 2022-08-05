import UIKit

var greeting = "Hello, playground"

//Simple Function syntax
func addTwoNumbers(){
    let a = 1
    let b = 1
    let c = a + b
    print(c)
}

addTwoNumbers() // calling the function
//print(c) -> wont work because c is declared inside the function and is valid only inside the function
// We can create variables of same name in different functions



// Functions which return something
func addTwoNumbers2() -> Int{                       // func name() -> dataType{}
    let a = 2
    let b = 3
    return a + b
}
let c = addTwoNumbers2()
print(c)

    
// Function having one parameter
func addTwoNumbers3(para : Int) -> Int{                          // func name(argument parameter : dataType){}
    let a = para
    let b = 4
    return a + b
}

let d = addTwoNumbers3(para: 6)
print(d)


// Functions having two parameters
func addTwoNumbers4(para1 : Int , para2 : Int) -> Int{            // func
    return para1 + para2 ;
}

let e = addTwoNumbers4(para1: 4, para2: 5)
print(e)
