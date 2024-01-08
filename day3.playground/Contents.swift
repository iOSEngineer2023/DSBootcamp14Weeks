import UIKit

enum UserStatus {
    case online, offline, idle, donotDisturb
}

let currentUserStatus = UserStatus.online


if currentUserStatus == .online || currentUserStatus == .idle {
    print("Online")
}else {
    print("User is not online!")
}

//Login system
// Login System Challenge
let username = "admin"
let password = "password123"

if username == "admin" && password == "password123" {
    print("Access granted.")
} else {
    print("Access denied.")
}
