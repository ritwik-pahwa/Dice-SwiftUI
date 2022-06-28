//
//  ContentView.swift
//  Dice-SwiftUI
//
//  Created by Ritwik Pahwa on 12/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var dice1 = 1
    @State var dice2 = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    ExtractedView(n: dice1)
                    ExtractedView(n: dice2)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    self.dice1 = Int.random(in: 1...6)
                    self.dice2 = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 50))
                        .padding(.horizontal)
                    
                }
                .background(.red)

            }
           
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}
