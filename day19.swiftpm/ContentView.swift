import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 100.0
    @State private var isEditing = false
    @State private var progress = 0.5
    @State private var quantity = 10.0
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .padding()
            HStack {
                Spacer()
                Button("more") {
                    progress += 0.3
                }
                .foregroundStyle(Color.green)
                Spacer()

                Button("less") {
                    progress -= 0.3
                }
                .foregroundStyle(Color.red)
                Spacer()
            }

            Slider(
                       value: $sliderValue,
                       in: 0...100,
                       onEditingChanged: { editing in
                           isEditing = editing
                       }
                   )
                   Text("\(sliderValue)")
                       .foregroundColor(isEditing ? .red : .blue)

            Stepper("Quantity: \(quantity)", value: $quantity, in: 1...10)
                .padding()
        }
    }
}


#Preview("look for it") {
    ContentView()
}
