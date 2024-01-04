

import SwiftUI


struct ContentView: View {
    var body: some View {
        Image("dog")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            .padding()

        Text("You're Dog")
            .font(.caption)
            .bold()
        //Challenge 2


        ZStack {
            Image("dog")
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))

            Text("Watermark!")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .opacity(0.9)
                .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 0))
        }

        ZStack {
            Image("dog")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)

            Text("Some Text on a Dog with a Quote")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.5))
                .cornerRadius(12)
                .padding()
        }

    }
}
