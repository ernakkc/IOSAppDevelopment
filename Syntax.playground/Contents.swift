import UIKit

// STRING
var name = "Eren"
var surname = "Akkoç"
/// Yorum satırı
var fullName = name + " " + surname
fullName.lowercased()


// INT
let number : Int = 5
let constantNumber = 10
/// constantNumber = 20 # ERROR


// BOOLEAN
constantNumber.isMultiple(of: 2)
fullName.isEmpty
/// fullName = 10 # ERROR
var numberWithString = String(number)
var stringWithNumber = Int(numberWithString)


// ARRAY
var myArray = [10, 20, 30] as [Int]
myArray[1]
myArray.append(0)
myArray.last
myArray.sort()


// SET
var numbersArray = [1, 1, 1, 2, 4]
var numbersSet: Set = [1, 1, 1, 2, 4] // 1 and 2. Not ordered
numbersSet.remove(1)
numbersSet


// DICTIONARY
/// key-value pairing
var userDictionary: Dictionary = ["User1": 10, "User2": 20]
userDictionary["User1"] = 5
userDictionary
userDictionary.keys
userDictionary.values


// LOOPS
/// While Loop
var x = 0
while x < 3 {
    print(x)
    x += 1
}
/// For Loop
var myArrayNumbers = [10, 20, 30]
var multipleOfArray : [Int] = []
for varaible in myArrayNumbers {
    multipleOfArray.append(varaible*2)
}


// CONDITIONS STATEMENTS
var a = 10
var b = 5
var myBoolean = a == b
if (myBoolean) {
    print("My Boolean is True")
} else {
    print("My Boolean is False")
}


// FUNCTIONS
func sayHello(name:String, surname:String) {
    print("Hello " + name + " " + surname + " !!")
}
sayHello(name: "Eren", surname: "Akkoç")

func toplamaFunc(a:Int, b:Int) -> Int {
    return a+b
}
var toplam = toplamaFunc(a:10,b:20)


// OPTIONALS
var myName:String? // It can include a data or there isn't any data
myName?.count
/// force unwrapping
/// var stringToInt = Int(myName)!

/// var stringToInt = (Int(myName) ?? 1) * 5
