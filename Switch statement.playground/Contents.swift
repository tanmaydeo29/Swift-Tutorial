import UIKit

// When there are various conditions to check , rather than using multiple else if's use switch statement

// Switch statement

var someCharacter : Character = "d"

switch someCharacter{
    case "a" :
        print("is an A")
    
    case "b" , "d":
        print("is a B or D")
    
    case "c":
        print("is a C")
    
    default:                            // compulsory to write
        print("some other character")
}
