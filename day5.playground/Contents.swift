import UIKit

//Challenge 1 Safe Unwrapping Challenge:
var test: String? = "BOOM!"

if let test = test {
    print(test)
} else {
    print("No Value")
}

//Challenge 2 Multiple Optional Binding Challenge:

var name: String?
var age: Int?

if let name, let age {
    print("My name is \(name) and I'm \(age) years old.")
} else {
    print("No Value")
}

//OPTIONAL CHALLENGES!!!


/* Challenge 3 Challenge 1: Optional String Concatenation
 Create two optional strings. Write a function that uses optional binding to concatenate these strings and print the result. If either string is nil, it should print "Incomplete data".
 */

var name1: String?
var surname1: String?

func concnatenateOptionalStrings() {
    if let name1, let surname1 {
        print("\(name1) \(surname1)")
    } else {
        print("Incomplete Information")
    }
}

/* Challenge 4: Optional Integer Sum
 Declare three optional integers. Use optional binding to calculate and print the sum of these integers. If any of the integers are nil, print "Cannot compute sum".
 */

var number1: Int? = 10
var number2: Int? = 20
var number3: Int? = 30

func sumOptionalIntegers() {
    if let number1, let number2, let number3 {
        print(number1 + number2 + number3)
    }else{
        print("No value to calculate")
    }
}

/* Challenge 5: Nested Optional Binding
 Define an optional dictionary with strings as keys and optional integers as values. Use nested optional binding to retrieve and print a value. If the key does not exist or the value is nil, print "Value not found".
 */

var optionalDictionary: [String: Int?] = ["Michael": 42, "Jessica": 43]

func retrieveValue(forKey key: String) {
    if let unwrappedValue = optionalDictionary[key] ?? nil {
        print("Value: \(unwrappedValue)")
    } else {
        print("Value not found")
    }
}
retrieveValue(forKey: "Michael")

/*
 Challenge 6: Unwrapping Multiple Optionals
 Create a tuple with three optional values (e.g., an optional Int, String, and Double). Use optional binding to unwrap all three values in a single if let statement and print them. If any value is nil, print "Incomplete tuple".
 */

var letsdoTuples: (Int?, String?, Double?) = (42, "Michael", 1.95)

func unwrapTuplesToTheRescue() {
    if let intValue = letsdoTuples.0, let stringValue = letsdoTuples.1, let doubleValue = letsdoTuples.2 {
        print("\(intValue) \(stringValue) \(doubleValue)")
    } else {
        print("No Value!")
    }
}

unwrapTuplesToTheRescue()


/*
 Challenge 7: Optional Binding with Where Clause
 Create an optional integer. Use optional binding with a where clause to check if the integer, after being unwrapped, is divisible by 3. Print the result or "Not divisible by 3" if it isn't or the value is nil.
 */

var number: Int? = 3

func checkDivisiblity(){

    if let number, number % 3 == 0 {
        print("Number is divisible \(number)")
    }else {
        print("Not divisible")
    }
}

checkDivisiblity()

/*
 Challenge 8: Combining Optionals with Guard Statements
 Implement a function that takes two optional parameters (e.g., two optional strings representing first and last name). Use guard statements to unwrap these optionals. If either is nil, return "Incomplete name", else return the full name.
 */



func combiningOptionalsWithGuardStatements(firstName: String?, lastName: String?) {
    guard let firstName, let lastName else {
        return print("No Value")

    }
    print("\(firstName) \(lastName)")
}


combiningOptionalsWithGuardStatements(firstName: "Michael", lastName: "Jackson")
