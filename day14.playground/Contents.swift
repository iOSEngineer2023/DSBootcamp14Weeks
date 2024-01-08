import UIKit

//Day 14: Challenge 1 + 2 + 3 + 4


struct BankAccount {

    var balance: Double
    var transActionHistory: [String] = []

    mutating func deposit(amount: Double) {
        balance += amount
        transActionHistory.append("Deposit: \(amount)")
    }

    mutating func withdraw(amount: Double){
        if balance >= amount {
            balance -= amount
            transActionHistory.append("Withdraw: \(amount)")
        }else {
            print("Insufficient funds for withdrawal")
        }

    }

    func printDescription(){
        for transaction in transActionHistory {
            print(transaction)
        }
    }
}

var account = BankAccount(balance: 100000)
account.deposit(amount: 5000)
account.withdraw(amount: 1000)
account.printDescription()
