import UIKit

// A closure is a function without a func keyword

// Fubction for addtin two numbers
func addTwoNumbers(number1 : Int , number2 : Int) -> Int{
    return number1 + number2
}

// Closure for adding two numbers
typealias addition_alias = (Int , Int) -> Int

var addition : addition_alias = {
    (number1 , number2) in return number1 + number2     // return $0 + $1
}

let result_func = addTwoNumbers(number1: 26, number2: 25)
print(result_func)

let result_closure = addition(26 , 25)
print(result_closure)


var greetUser : (String) -> () = {
    value in print("Hey \(value)")
}

var greetUser2 : (_ name : String) -> () = {   // If want to use paramenetr in closure then use the _ before the parameter
    value in print("Hey \(value)")
}

greetUser("Tanmay")
greetUser2("Ios")


// Find the area of square using closure

var area_square : (Int) -> Int = {
    length in return length * length
}

let area1 = area_square(4)
print(area1)


// Find the area of rectangle using closure

var area_rectangle : (Int , Int) -> Int = {
    (length , height) in return length * height
}

let area2 = area_rectangle(4 , 5)
print(area2)


// Check whether a number is even or not

var even_or_not : (Int) -> Bool = {
    value in
    if(value % 2 == 0){
        return true
    }
    else{
        return false
    }
}

var ans = even_or_not(10)
print(ans)


// Check whether an year is a leap or not

var leap : Bool = false ;

typealias leap_alias = (Int) -> Bool

var check_leap : leap_alias = {
    value in
    if(value % 400 == 0){
        leap = true
    }
    else if(value % 100 == 0){
        leap = false
    }
    else if(value % 4 == 0){
        leap = true
    }
    return leap
}

var leap_or_not = check_leap(1900)
print(leap_or_not)

// Closures as a function parameters
func perform_operation(num1 : Int , num2 : Int , operation : (Int , Int) -> Int) -> Int{
    operation(num1 , num2)
}

var subtract : (Int , Int) -> Int = {
    (num1 , num2) in
    return num1 - num2
}

let result = perform_operation(num1: 6, num2: 4, operation: subtract)
print(result)


// Check whether year is leap or not
func leapornot(num1 : Int , leap_or_not : (Int) -> Bool) -> Bool{
    leap_or_not(num1)
}

var result2 = leapornot(num1: 2060, leap_or_not: check_leap)
print(result2)

// Check whether a prime or not
func primeornot(num1 : Int , prime_or_not : (Int) -> Bool) -> Bool{
    prime_or_not(num1)
}

var flag : Bool = true
var prime_closure : (Int) -> Bool = {
    value in
    if(value <= 1){
        flag = false ;
    }
    else{
        for i in 2...value{
            if(value % i == 0){
                flag = false
                break
            }
        }
    }
    return flag
}

var prime = primeornot(num1: 39, prime_or_not: prime_closure)
print(prime)


// Trailing closure is when the closure parameter is the last one in the function
