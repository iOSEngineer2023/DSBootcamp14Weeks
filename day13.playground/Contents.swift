import UIKit

//Day 13: Challenge 1
struct Vehicle {
    var make: String
    var model: String
    var year: Int

    func printDescription(){
        print("Vehicle: \(year) \(make) \(model)")
    }
}

//Object Instantiation and Method Invocation.
let myCar = Vehicle(make: "Mercedes", model: "EQE SUV", year: 2023)
myCar.printDescription()

// Challenge 2
struct Student {
    var name: String
    var grade: Int
    var studentID: Int

    mutating func updateGrade(newGrade: Int) {
        grade = newGrade
    }
}

//Object Instantiation and Method Invocation.
var student = Student(name: "Kemal", grade: 95, studentID: 1)
student.updateGrade(newGrade: 98)
print("\(student.name)'s updated grade: \(student.grade)")
