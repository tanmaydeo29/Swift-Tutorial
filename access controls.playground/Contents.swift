import UIKit

// Access controls are used to set the accessibility (visibility) of classes , struct , enum etc
// By default every function in this
class student{
    var name : String
    var rollno : Int
    var address : String
    var shoes_polished : Bool
    
    init(name : String , rollno : Int , address : String , shoes_polished : Bool){
        self.name = name
        self.address = address
        self.rollno = rollno
        self.shoes_polished = shoes_polished
    }
    
    public func _name(){
        print("My name is \(name)")
    }
    
    private func _rollno(){
        print("My roll no is \(rollno)")
    }
    
    fileprivate func _address(){
        print("My address is \(address)")
    }
    
    internal func isShoePolished(){
        print("My shoe is" , (shoes_polished == true) ? "polished" : "not polished")
    }
    
}

var student1 = student(name: "Tanmay", rollno: 7, address: "Aurangabad", shoes_polished: true)
student1._name()
//student1._rollno()     //Not accessible because function is private
student1._address()
student1.isShoePolished()

