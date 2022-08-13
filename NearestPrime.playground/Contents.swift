import UIKit

// Number = 20
// Output = 19



var flag : Bool = true

public func isPrime(number : Int) -> Bool{
    if(number == 0 || number == 1){
        flag = false
    }
    else if(number == 2){
        flag = true
    }
    for i in 3...(number/2){
        if(number % i == 0){
            flag = false
            break
        }
    }
    return flag
}

public func near(number : Int) -> Int {
    return 0 
}

print(near(number : 20))
