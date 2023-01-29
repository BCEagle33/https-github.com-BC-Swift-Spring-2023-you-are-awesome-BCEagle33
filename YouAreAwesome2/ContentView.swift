//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Tyler on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        
        
        VStack {
            
            Spacer()
            
            
            
            
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            
            Button("Show Message") {
                let message1 = "You are Awesome!"
                let message2 = "You Are Great!"
                
                //This is the action performed when pushed
                if messageString == message1 {
                    messageString = message2
                    
                } else {
                    messageString = message1
                }
            }
            .buttonStyle(.borderedProminent)
            
            
            
            //.border(.purple, width: 5)
            .padding()
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
