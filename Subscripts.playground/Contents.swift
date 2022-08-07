import UIKit

// Subscript -> It is the alternate method of accessing the elements of colections (arrays , dictionaries) , list and sequences present in a class / structure / enumerators
// Subscripts are present in the class / structure / enumerators
// Use subscript keywork to create a subscript , We use subscript to set and retrieve values by index without needing seperate functions for setting and retrieval


//Subscript syntax

//subscript(index : Int) -> Int{
//    get{
//        // return appropriate subscript value here
//    }
//    set(newValue){
//        // perform a setting action here
//    }
//}


//Array with Subscript

var cars = ["Audi" , "Honda" , "Hyundai" , "Maruti" , "Mercedes"]
print(cars[1]) // Simple array accessing
print(cars[4])


struct person{
    var person = ["Tanay" , "Vaibhav" , "Tanmay" , "Shivam"]
    
    subscript(index : Int) -> String{
        get{
            if(index >= 0 && index <= (person.count - 1)){
                return person[index]
            }
            else{
                return "Not Exist"
            }
        }
        set(newValue){
            person.append(newValue)
        }
    }
}

var person1 = person()
print(person1.person[0]) // Normal accessing collections in struct
print(person1.person[3]) // Normal accessing collections in struct

print(person1[1])  // Accessing using subscripts
print(person1[3])  // Accessing using subscripts

print(person1[9]) // Out Of bound


// Dictionary with subscripts

var dictionary = ["One" : 1 , "Two" : 2 , "Three" : 3 , "Four" : 4]
print(dictionary["Two"])

struct bdays{
    var birthdays = ["Tanmay" : 2000 , "Vaibhav" : 1999 , "Sheru" : 2020 , "Arvind" : 1995]
    
    subscript(index : String) -> Int{
        get{
            if let exist = birthdays[index]{
                return exist
            }
            else{
                return 0
            }
        }
        set(newValue){
            birthdays[index] = newValue //adding new value
        }
    }
}

var b_yrs = bdays()
print(b_yrs.birthdays["Tanmay"]) // Normal accessing collections in struct

print(b_yrs["Vaibhav"]) // Accessing using subscripts
print(b_yrs["Sanju"])

b_yrs["Amogh"] = 2005  //append using set

print(b_yrs.birthdays)

b_yrs["Amol"] = 1997

print(b_yrs.birthdays)


// Some extra

struct fruits_names{
    var fruits = ["Apple" , "Mango" , "Guava" , "Pear" , "Grapes"]
    
    subscript(index : Int) -> String{
        get{
            if(index >= 0 && index < fruits.count){
                return fruits[index]
            }
            else{
                return "Not Present"
            }
        }
        set(newValue){
            fruits.insert(newValue, at: index)
        }
    }
}

var fruit = fruits_names()
print(fruit.fruits[4])  // Accessing elements from array normally

print(fruit[1])  // Accessing using subscripts

fruit[5] = "Watermelon"
print(fruit.fruits)
