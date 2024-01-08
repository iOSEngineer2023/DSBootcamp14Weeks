import UIKit

//Day 11: Challenge

var country: [String: Double] = ["Turkey": 84.78, "Germany": 83.2, "Switzerland": 8.71]

country.updateValue(8.70, forKey: "Switzerland")
print(country)
var country = ["Turkey": "Türkiye"]
print(country)

//Challenge 2
func findPhoneNumber(for name: String, in phoneBook: [String: String]) -> String? {
    return phoneBook[name]
}

let phoneBook = ["Kemal": "123-4567", "Atatürk": "987-6543"]
if let number = findPhoneNumber(for: "Kemal", in: phoneBook) {
    print("Kemal's phone number is \(number)")
} else {
    print("Number not found")
}


//Challenge 3 two Solutions
func mergeGrades(_ grades1: [String: Int], _ grades2: [String: Int]) -> [String: Int] {
    var mergedGrades = grades1

    for (subject, grade) in grades2 {
        if let existingGrade = mergedGrades[subject] {
            mergedGrades[subject] = (existingGrade + grade) / 2
        } else {
            mergedGrades[subject] = grade
        }
    }

    return mergedGrades
}

// First Solution
let student1Grades = ["Math": 80, "Science": 90]
let student2Grades = ["Math": 85, "English": 95]
let merged = mergeGrades(student1Grades, student2Grades)
print(merged)

//Second Solution
let keepingCurrent = student1Grades1.merging(student2Grades)
{    (current, _) in current }
let replaceCurrent = student1Grades.merging(student2Grades)
{ (_, new) in new}
let merged1 = dict1.merging(dict2) { (current, new) in
    return max(current, new)
}
print(merged1)

