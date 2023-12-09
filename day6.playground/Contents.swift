import UIKit

//Day 6: Challenge 1 For-In Loop - Sum of Digits

func sumOfDigitis(_ number: Int) -> Int {
    let stringNumber = String(number)
    var sum = 0

    for character in stringNumber where character.isNumber {
        if let digit = Int(String(character)){
            sum += digit
        }
    }
    return sum
}

// Example
let result = sumOfDigits(12345) // = 15
print(result)


//Challenge 2
import Foundation

func guessingGame(guesses: [Int]) {
    let randomNumber = Int.random(in: 1...10)
    print("Random Number: \(randomNumber)")

    for guess in guesses {
        print("Your guess: \(guess)")
        if guess == randomNumber {
            print("Correct! The number was \(randomNumber).")
            return
        } else {
            print("Wrong! Try again.")
        }
    }

    print("No more guesses left. The number was \(randomNumber).")
}

// Example
guessingGame(guesses: [3, 7, 1, 10])
