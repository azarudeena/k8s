//
//  ContentView.swift
//  k8s
//
//  Created by Azarudeen A on 11/02/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        return HStack(){
            ForEach(0..<4)  { index in
               CardView(isFaceUp: false)
            }
        }
        .padding()
        .font(Font.largeTitle)
        .foregroundColor(Color.orange)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View{
        ZStack() {
        
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
