import UIKit

var greeting = "Hello, playground"


// Class

class myClass{
    var studentName : String = "Alex"
    var studentId : Int = 101
}

var student1 = myClass()
student1.studentName = "Tanmay"
student1.studentId = 102

var student2 = myClass()
var student3 = student2    // student2 ka reference is passed to student3 ie any change in anyone will affect the other

student3.studentName = "Sanjeev"
print("Student3 \(student3.studentName)")
print("Student2 \(student2.studentName)")

student2.studentName = "Jayesh"
print("Student3 \(student3.studentName)")
print("Student2 \(student2.studentName)")



// Struct

struct myStruct{
    var name : String
    var id : Int
}

var student4 = myStruct(name : "Amogh" , id : 104)
var student5 = student4  // student4 ki value student5 me jari hai (not whole student4)
print("Student4 \(student4.name)")
print("Student5 \(student5.name)")

student5.name = "Arvinder"
print("Student5 \(student5.name)") //Arvinder
print("Student4 \(student4.name)") //AMOGH


