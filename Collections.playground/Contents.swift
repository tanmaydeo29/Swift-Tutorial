import UIKit

//Collections -> used to store data collectively

// Array -> An array is a collection used to store elements of same data type
// Instead of creating multiple variables create an array

var numArray = [1 , 2 , 3 , 4 , 5 , 6 , 7 , 1 , 2]
print(numArray.count)   //counts the no of elements in the array

numArray.append(9)  // Adds 9 to array at the last position
print(numArray)

numArray.insert(8, at: 3)   // will insert element 8 at position 3 (array indexing starts from 0)
print(numArray)

numArray.firstIndex(of: 2)  //Gives the first occurance of 2
numArray.firstIndex(of: 7)  //Gives the first occurance of 7

numArray.remove(at: 2) // remove at position 2
print(numArray)

numArray.shuffle()  //shuffles array anyway
print(numArray)

numArray.sort() //sorts the array in ascending order
print(numArray)

// Declaring an array of a particular data type
var numbers : [Int] = [1 , 2 , 3 , 4 , 5]

// Can also create an empty array
var empty_arr : [Int] = []

print(numbers[numbers.count - 1]) //will print the last element of the numbers array

numbers[0] = 6   //modifying the numbers array
print(numbers)

numbers.removeFirst()  //delete the first element in the array
print(numbers)

// removeLast() , removeAll() will remove the last and all elements of the array respectively

var doesItContains7 = numbers.contains(7)  //array contains 7 or not
print(doesItContains7)

numbers.reverse()   //will reverse the number array
print(numbers)

// We can also create an array having mixed data types using any data type

var mixed_array : [Any] = [1 , 3.99 , "c" , "ios" , true]
print(mixed_array)

//Questions

public var sample_arr : [Int] = [4 , 2 , 6 , 9 , 0 , 1 , 4 , 8]

// Calculate the sum of all the array elements

func sumOfArray(num : [Int]) -> Int {
    var sum = 0
    for i in 0...(num.count - 1){
        sum += num[i]
    }
    return sum
}

var sum = sumOfArray(num: sample_arr)
print(sum)


// Check if all the numbers are greater than 0

var check = 1 ;
func allNumbersGreaterOrNot(num : [Int]) -> String{
    for i in 0...(num.count - 1){
        if(num[i] <= 0){
            check = 0
            break
        }
    }
    return (check == 1) ? ("All numbers are greater than 0") : ("All numbers are not greater than 0")
}

var check_greater = allNumbersGreaterOrNot(num: sample_arr)
print(check_greater)


//Set -> A set is a collection of unique data ie elements can't be duplicated
var set : Set = [1 , 2 , 3 , 4 , 5]
print(set)  //All unique elements will be printed

// Create a set with a specific data type
var set_int : Set<Int> = [5 , 6 , 7 , 8 , 9]
print(set_int)

print(set_int.insert(5))  // 5 will not be inserted because it is already present

set_int.remove(5)  // removes the current element
print(set_int)

set_int.sorted()  // sorts the set

print(set.contains(4))

// Iterate over a set and calculate sum
var sum_set = 0
for i in 1...set.count{
    sum_set += i
}
print(sum_set)

// Set Operations

//1. Union of two sets

var setA: Set = [1, 3, 5]

var setB: Set = [0, 2, 4]

print("Union : \(setA.union(setB))") // groups all the unique elements from both sets

//2. Intersection between two sets

print("Intersection : \(setA.intersection(setB))") // intersection is an empty set (no intersection)
var seta : Set = [1 , 2 , 3]
var setb : Set = [2 , 3 , 4]
print("Intersection : \(seta.intersection(setb))") // intersection is 2 3

//3. Difference between two sets

print("Difference of a and b : \(seta.subtracting(setb))") //seta elements which are not in setb
print("Difference of b and a : \(setb.subtracting(seta))") //setb elements which are not in seta

//4. Equal sets
print("\(seta == setb)") //sets are not equal so return false

//5. Subset of a set
var set1 : Set = [11 , 12 , 13 , 14 , 15]
var set2 : Set = [13 , 15]
print("Is set2 a subset of set1 -> \(set2.isSubset(of: set1))")  //true

//6. Symmetric difference between sets
print("\(set1.symmetricDifference(set2))")



//Dictionary -> Unordered collection of items , which stores elements in key/value pair , key is unique identifier

//Create a dictionary

var capitalCity = ["Maharashtra" : "Mumbai" , "AndhraPradesh" : "Hyderabad" , "Goa" : "Panaji"]
print(capitalCity)

//keys and values of diferent data types
var numbers_dict = [1 : "One" , 2 : "Two" , 3 : "Three"]
print(numbers_dict)

// adding elements
print("Initial dict \(capitalCity)")
capitalCity["Tamilnadu"] = "Chennai"
print("Updated dict \(capitalCity)")

// changing value of dict
numbers_dict[2] = "Four"
print(numbers_dict)

// Access elements
var key_arr = Array(capitalCity.keys)
print(key_arr)

var values_arr = Array(capitalCity.values)
print(values_arr)

// Remove element from a dict
print("Initial \(capitalCity)")
capitalCity.removeValue(forKey: "Tamilnadu")
print("Updated \(capitalCity)")

//Number of dict elements
print(capitalCity.count)
