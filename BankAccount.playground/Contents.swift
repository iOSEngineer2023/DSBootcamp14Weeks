import UIKit

struct BankAccount {

    private var balance: Double
    private var transactionHistory: [String] = []


    init(initBalance: Double) {
        self.balance = initBalance
        transactionHistory.append("Account opened with Balance: \(initBalance)€")
    }

    mutating func deposit(amount: Double){
        balance += amount
        transactionHistory.append("Deposited: \(amount). Current \(balance)€")

    }

    mutating func withdraw(amount: Double){
        balance -= amount
        transactionHistory.append("Withdraw: \(amount) Current \(balance)")
    }

    func printHistory(){
        print("Transaction History")
        print("----------------------")
        for transaction in transactionHistory {
            print(transaction)
        }
    }

    func currentBalance() -> Double{

        return balance

    }
}


var isBank = BankAccount(initBalance: 100)
isBank.deposit(amount: 10000)
isBank.printHistory()

