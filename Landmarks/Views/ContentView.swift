//
//  ContentView.swift
//  Landmarks
//
//  Created by Dr. Dhingra on 4/30/23.
//

import SwiftUI

//SwiftUI automatically declares two structures.

//struct 1 conforms to the view protocol, decribes the content and layout for View.

struct ContentView: View {
    var body: some View {
        VStack {
            Mapview()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                Text("Tourist Center")
                    .font(.title2)
                Text("Weather Warnings")
                
            }.padding()
            Spacer()
        }
        
    }
}

//struct 2 declares the preview for the first struct to be viewed. The preview tracks your changes simultaneously in the first structure and previews them right away.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
