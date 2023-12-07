import UIKit

//Day 4 Challenge 1
func printDayOfWeek(dayNumber: Int) {
    switch dayNumber {
    case 1:
        print("Sunday")
    case 2:
        print("Monday")
    case 3:
        print("Tuesday")
    case 4:
        print("Wednesday")
    case 5:
        print("Thursday")
    case 6:
        print("Friday")
    case 7:
        print("Saturday")
    default:
        print("Invalid number")
    }
}

//Challenge 2

func temperatureAdivcer(temperature: Int){
    switch temperature {
    case ..<30:
        print("its very Cold. Dress warmly")
    case 30...45:
        print("It's chilly. Wear a jacket.")
    case 46...60:
        print("Mild weather. A light jacket would be fine.")
    case 61...:
        print("Warm weather. Dress lightly.")
    default:
            print("Check the temperature again.")
    }
}
