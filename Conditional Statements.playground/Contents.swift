import UIKit

// If statemenmt

var a : Int

a = 10

if(a == 10){                               // this statement is true
    print("You have learned if statement") // This will be printed
}


var b : String

b = "ios"

if(b == "io"){                          // this statement is false
    print("You are nailing if statement") // This will not be printed
}


// If Else statement

var c : Int = 20 ;

if(c == 10){                           // this statement is false
    print("The value of c is not 10")  // this will not be printed
}
else{
    print("The value of c is 20")     // In if else , if the "if" statement is false , it will directly print the else statement
}

var d = 29.5
if (d >= 10){                                                                  // this statement is true
    print("The value of d is surelt greater than or equal to 10 , Cheers!!")   // this will be printed
}
else{
    print("🤨")
}


// If Else if statement -> first checks the if statement , if false then checks the else if statemnet , if false then only prints the else statement

var e : Int

e = 100

if(e == 0){         // this statement is false
    print("e is 0")
}
else if(e >= 0 && e <= 50){ // this statement is false
    print("e is between 0 and 50")
}
else{                       // this statement is true
    print("e is greater than 50") // this will be printed
}

var f = 50
if(f == 0){         // this statement is false
    print("f is 0")
}
else if(f >= 0 && f <= 50){         // this statement is true
    print("f is between 0 and 50")  // this will be printed
}
else{                               // this statement is false
    print("f is greater than 50")
}


// Nested if else statements
var g = 10 ;

if(g > 0){
    if(g <= 5){                 // this statement is false
        print("g is less than 5")
    }
    else{                           // this statement is true
        print("g is greater than 5") // gets printed
    }
}
else{
    print("😏")
}

