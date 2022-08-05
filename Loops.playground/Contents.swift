import UIKit

print("Hello , Tanmay!\n")

// Loops
// Print numbers from 1 to 10 & 11 to 20

// 1. For Loop

print("For Loop")

for i in 1...10{
    print("Tanmay" , i)
//     print("Tanmay \(i)")  -> concatenation
}

for i in 11...20{
    print("Tanmay" , i)
}

print("")  // new line
// 2. While Loop

print("While Loop")

var start = 1 ;
var last = 10 ;

while(start <= last){
    print(start) ;
    start += 1 ;   // unlike other languages "start++" is not used
}

var second_last = 20

while(start <= second_last){
    print(start) ;
    start += 1 ;
}


// 3. Repeat while
// While loop first checks the condition and then runs whearas repeat while runs once and then checks the condition

print("\nRepeat While Loop")
var f = 30
repeat{
    print(start)
    start += 1 ;
}
while(start <= f)


