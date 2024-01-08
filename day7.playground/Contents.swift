import UIKit

// Challenge 1:
var userInfo: (name: String, age: Int, country: String) = ("Alice", 30, "USA")
print("Name: \(userInfo.name)")
print("Age: \(userInfo.age)")
print("Country: \(userInfo.country)")

// Challenge 2:
var employee: (name: String, id: Int, role: String) = ("Bob", 12345, "Software Engineer")
print("Employee Name: \(employee.name)")
print("Employee ID: \(employee.id)")
print("Employee Role: \(employee.role)")

// Update the role of the employee
employee.role = "Senior Developer"
print("Updated Employee Role: \(employee.role)")
