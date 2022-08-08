import UIKit

// enum for creating specific errors
enum AgeError : Error{
    case UnderAgeError(requiredage : Int)
}

enum BikeError : Error{
    case inSuffixientAgeToRideBike(req_age : Int)
}

struct vote{
    
    // function which throws error if the age is less than 18
    func canVote(age : Int) throws -> String{
        if(age < 18){
            // throws an error
            throw AgeError.UnderAgeError(requiredage: 18)
        }
        return "You can vote"
    }
    
    // function which throws error if the age is less than 18
    func rideBike(age : Int) throws -> String{
        if(age < 18){
            throw BikeError.inSuffixientAgeToRideBike(req_age: 18)
        }
        return "You can ride the bike"
    }
}

var person1 = vote()
do{
//    try print(person1.canVote(age: 15))
    try print(person1.rideBike(age: 19))
}
catch AgeError.UnderAgeError(let requiredage){
    print("You can't vote because the required age to vote is \(requiredage)")
}
catch BikeError.inSuffixientAgeToRideBike(let req_age){
    print("You can't ride the bike because the required age is \(req_age)")
}


// Example 3

enum BankError: Error{
    case inSufficientBankBalance(currentBalance : Int)
}

struct bank{
    
    var balance : Int
    var amount : Int
    
    init(balance : Int , amount : Int){
        self.balance = balance
        self.amount = amount
    }
    
    func withdraw(amount : Int) throws -> String{
        if(amount > balance){
            // throw error
            throw BankError.inSufficientBankBalance(currentBalance: balance)
        }
        return "Thanks for withdrawing money , Your balance is \(balance - amount)"
    }
    
}

var person2 = bank(balance: 10000, amount: 12000)

do{
    try print(person2.withdraw(amount: person2.amount))
}
catch BankError.inSufficientBankBalance(let currentBalance){
    print("You can't withdraw money because your balance is just \(currentBalance) and you are withdrawing \(person2.amount)")
}
