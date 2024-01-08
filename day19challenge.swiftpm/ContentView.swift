import SwiftUI

struct ContentView: View {
    @State private var sliderVlaue = 10.0
    @State private var isEditing = false
    var body: some View {
        VStack {
            Text("Slices")
                .font(.largeTitle)
                .fontWeight(.bold)

            Slider(
                value: $sliderVlaue,
                in: 1...10
            )
            {
                Text("Slider")
            } minimumValueLabel: {
                Text("0")
                    .fontWeight(.light)
            }maximumValueLabel: {
                Text("10")
                    .fontWeight(.light)
            } onEditingChanged: { editing in
                isEditing = editing
            }
            if sliderVlaue < 2 {
                Text("Slice: \(Int(sliderVlaue))")
            }else {
                Text("Slices: \(Int(sliderVlaue))")
            }

        }
        .tint(isEditing ? .blue : .red)
        .padding()
    }
}
