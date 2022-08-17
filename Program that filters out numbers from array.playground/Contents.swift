import UIKit

var a = ["1" , "2" , "three" , "four" , "5" , "abc"]

var output_arr : [Int] = []

var num : Int?

for i in 0...(a.count - 1){
    num = Int(a[i])
    if(num != nil){
        output_arr.append(num!)
    }
}
print(output_arr)
