import UIKit


//Day 9: Challenge 1

func personalGreeter(firstName: String){
    print("Welcome, \(firstName)! Hope you have a fantastic day!")
}

personalGreeter(firstName: "Alex")

func basicCalculator(_ number1: Int, _ number2: Int, _ operator: String) -> Int {
    switch `operator` {
    case "+":
        return number1 + number2
    case "-":
        return number1 - number2
    default:
        fatalError("Operator not supported")
    }
}

basicCalculator(25, 15, "+")
basicCalculator(25, 15, "-")
