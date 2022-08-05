import UIKit

// Operations are special symbols which are used to perform some operations on variables and values

// Arithmetic Operators
print("Arithmetic Operators ---->")
var a = 10
var b = 2

// 1. Addition -> +
print("Addition of a and b is \(a + b)")

// 2. Subtraction -> -
print("Subtraction of b and a is \(b - a)")

// 3. Multiplication -> *
print("Multiplication of a and b is \(a * b)")

// 4. Division -> /                         // Displays quotient
print("Division of a and b is \(a / b)")

// 5. Modulus -> %                          // Displays reminder (10 % 2 is 5 (fully divisible) so remainder is 0)
print("Modulus of a and b is \(a % b)\n")


// 	Assignments Operators
print("Assignments Operators ---->")

var c = 4
var d = 5

//1. Assignment operator -> =
c = 5    // assigning 5 to c
d = c    // assigning c's value to d
print("\(c) , \(d)")

//2. Addition Assignment -> +=
c += 1  // Similar to a = a + 1
d += 1  // Similar to d = d + 1
print("\(c) , \(d)")

//3. Subtraction Assignment -> -=
c -= 1  // Similar to a = a - 1
d -= 1  // Similar to d = d - 1
print("\(c) , \(d)")

//4. Multilication Assignment -> *=
c *= 2  // Similar to a = a * 2
d *= 2  // Similar to d = d * 2
print("\(c) , \(d)")

//5. Division Assignment -> /=
c /= 2  // Similar to a = a / 2
d /= 2  // Similar to d = d / 2
print("\(c) , \(d)")

c = 67
d = 18

//6. Modulus Assignment -> %=
c %= d  // Similar to a = a % d
d %= 2  // Similar to d = d % 2
print("\(c) , \(d)\n")


//Comparision Operator -> return true or false
print("Comparision Operators ---->")

// 1. is Equal To -> ==
var isThreeEqualToFive = (3 == 5)
print(isThreeEqualToFive) // prints false 3 != 5

print(3 == 3) // prints true 3 is equal to 3

// 2. Not Equal To -> !=
var isThreeNotEqualToFive = (3 != 5)
print(isThreeNotEqualToFive) // prints true 3 != 5

print(3 != 3) // prints false 3 is equal to 3

// 3. Greater Than -> >
print(3 > 5) //returns false 3 < 5
print(5 > 3) // return true

// 4. Less Than -> <
print(3 < 5) //returns true
print(5 < 3) // return false 5 > 3

// 5. Greater Than Equal To -> >=
print(3 >= 5) // returns false
print(5 >= 3) // returns true

// 6. Lesser Than Equal To -> <=
print(3 <= 5) // returns true
print(5 <= 3) // returns true
 print()

// Logical Operators
print("Logical Operators ----->")
// 1. Logical AND    //if one false whole expression becomes false
print(true && true)      // returns true
print(true && false)     // returns false

// 2. Logical OR    //if one true whole will become true
print(true || false)      // returns true

// 3. Logical NOT   // Negation
print(!true)                  // returns false


