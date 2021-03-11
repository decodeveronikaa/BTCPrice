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
            
            Image("bit").resizable().aspectRatio(contentMode: .fit).shadow(radius: 150).padding()
            Text(dataStorage.btcPrice).font(.largeTitle).font(.callout).bold().accentColor(.green).scaleEffect(0.9)
            Image(systemName: "dollarsign.square.fill").imageScale(.large).foregroundColor(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1))).padding(.leading, -140).padding(.top, -36)
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            Group {
                     ContentView()
                        .previewDevice(PreviewDevice(rawValue: "iPhone X"))
                        .previewDisplayName("iPhone X")

                     ContentView()
                        .previewDevice(PreviewDevice(rawValue: "iPhone XS"))
                        .previewDisplayName("iPhone XS")
                  }
            }
        }
        
    }

