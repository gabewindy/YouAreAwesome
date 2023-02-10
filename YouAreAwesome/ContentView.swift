//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Gab on 1/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    var body: some View {
        VStack {
            Image(systemName: "3.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange) // comments
                .background(.blue)
                .padding(.trailing, 30.0)
                .padding(.bottom, 100)
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
                .italic()
            HStack {
                Button("awesome", action: {messageString = "you are awesome"}).buttonStyle(.borderedProminent) // standard format
                Button("great") {
                    messageString = "you are great!!!!"
                }.buttonStyle(.borderedProminent) // trailing closure format
            }
        }.padding(.trailing, 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
