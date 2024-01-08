import SwiftUI

struct ContentView: View {
    var body: some View {
       //Challenge 1
        VStack {
            Button{

            }label: {

                Text("Next")
                    .underline()
                    .bold()
                    .padding()
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .padding()
        }



            //Challenge 2

            Label {
                Text("Your  Book")
                    .font(.largeTitle)
                    .underline(color: Color.red)
                    .bold()
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.green, lineWidth: 4)

                    )

            } icon: {
                Image(systemName: "book.pages")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)

            }

            //Challenge 3
            Label {

            } icon: {
                Image(systemName: "gear")
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .bold()
                    .padding(.top, 12)
            }
            .labelStyle(.iconOnly)
        }
    }
}
