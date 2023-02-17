//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gab on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "when the genius bar needs help, they call you! "
    var body: some View {
        VStack {
//            Image(systemName: "3.circle")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.orange) // comments
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 1)
                .padding(30)
            HStack {
                Button("awesome", action: {messageString = "you are awesome"}).buttonStyle(.borderedProminent) // standard format
                Button("great") {
                    messageString = "you are great!!!!"
                }.buttonStyle(.borderedProminent) // trailing closure format
            }.border(.purple, width: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
