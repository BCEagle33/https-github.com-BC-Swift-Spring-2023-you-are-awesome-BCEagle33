//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Tyler on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    var body: some View {
        
        
        
        VStack {
            
        
            
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
            
            
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
        
            
            Spacer()
            
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "You Are Fantastic!",
                                "Fabulous? That's You!",
                                "You Make Me Smile!",
                                "When the Genius Bar Needs Help, They Call You!"]
                
                
                
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                
               // imageName = "image\(Int.random(in: 0...9))"
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                
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
