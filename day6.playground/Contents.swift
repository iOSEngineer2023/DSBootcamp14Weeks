import UIKit

//Day 6: Challenge 1 For-In Loop - Sum of Digits

func sumOfDigits(_ number: Int) -> Int {
    let stringNumber = String(number)
    var sum = 0

    for character in stringNumber where character.isNumber {
        if let digit = Int(String(character)){
            sum += digit
        }
    }
    return sum
}

let result = sumOfDigits(12345)
print("You're \(result) result")


//Challenge 2


func guessTheGame(guesses: [Int]){
    let randomNumber = Int.random(in: 1...10)
    print("Random number is \(randomNumber)")

    for guess in guesses {
        print("Print your guess: \(guess)")
        if guess == randomNumber{
            print("Correct! The number was \(randomNumber)")
        }else{
            print("Wrong! Try again!")
        }
    }
    print("No more guesses left. The number was \(randomNumber)")
}


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


