//
//  ContentView.swift
//  BitPrice
//
//  Created by Veronica Markova on 3/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var dataStorage = BitData()
    
    var body: some View {
        VStack{
            
            Image("bit").resizable().aspectRatio(contentMode: .fit).padding()
            Text(dataStorage.btcPrice).font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

