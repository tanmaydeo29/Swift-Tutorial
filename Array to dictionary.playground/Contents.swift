import UIKit

var arr = ["Akash", "Nitin", "Sachin", "Akash", "Amol", "Dilip"]

arr = Array(Set(arr))
print(arr)

var names = Dictionary(grouping: arr){$0.first!}
print(names)

