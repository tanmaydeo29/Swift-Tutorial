import UIKit

var a = ["1" , "2" , "three" , "four" , "5" , "abc"]

var output_arr : [Int] = []

for i in 0...(a.count - 1){
    let num = Int(a[i]) ?? nil
    if(num != nil){
        output_arr.append(num!)
    }
}
print(output_arr)

       
