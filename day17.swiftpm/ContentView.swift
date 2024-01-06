import SwiftUI
import Combine

struct ContentView: View {

    @State private var vibrateOnRing = false
    @State private var vibrateOnRing1 = true
    @State private var isFlagged = true
    @State private var activity = true
    @State private var username: String = ""
    @State private var userInput: String = ""

    var body: some View {
        //Challenge 1

        ZStack{
            Color.secondary

            VStack{
                Text("Welcome to SwiftUI")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.white)
                Toggle(isOn: $vibrateOnRing){
                    Text("Vibrate on Ring")
                }
                .font(.title2)
                .bold()
                .foregroundStyle(Color.white)
                Toggle(
                    "Vibrate on Ring",
                    systemImage: "book",
                    isOn: $vibrateOnRing1
                )
                .font(.title2)
                .bold()
                .foregroundStyle(Color.white)


                //Challenge 2

                TextField("Type something in....", text: $userInput)
                    .padding()
                    .border(Color.white)
                    .onChange(of: userInput) { newValue in
                                       // Limit the input to 100 characters
                                       if newValue.count > 100 {
                                           userInput = String(newValue.prefix(100))
                                       }

}
                Text("Character count : \(userInput.count)")

                //Challenge 3

                Link("Visit OpenAI", destination: URL(string: "https://openai.com/")!)
                    .foregroundStyle(Color.yellow)
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
            .toggleStyle(.switch)

        }
        .ignoresSafeArea()
    }
}
