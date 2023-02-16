//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gab on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "asd "
    var body: some View {
        VStack {
            Image(systemName: "3.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange) // comments
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
//                .padding()
//                .frame(width: 300, height: 150)
                .border(.orange, width: 1)
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
