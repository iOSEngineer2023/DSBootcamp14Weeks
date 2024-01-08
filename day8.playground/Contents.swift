import UIKit

//Day 8 Challenge 1:
enum MusicGenre {
    case rock, jazz, classical

    var description = {
        switch self {
        case .rock:
            print("Rock")
        case .jazz:
            print("Jazz")
        case .classical:
            print("Classical")
        }
    }
}

let genres: [MusicGenre] = [.rock, .jazz, .classical]

for genre in genres {
    print("\(genre): \(genre.description)")
}

