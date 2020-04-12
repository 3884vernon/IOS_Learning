//
//  ContentView.swift
//  GroceryList
//
//  Created by Timothy Vernon on 2/12/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

//Create Animated Circulated
struct ContentView: View {
    @State var show = false
    var body: some View {
        
        VStack(spacing: 30) {
            Rectangle ()
                .frame(width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.3)
            Text("Percentage Spent of Set Budget")
          
            ZStack {
           Text("99%")
            
            // Circle Creation
                Circle()
                    .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .frame(width:100, height: 100)
                
                
            Circle()
                .trim(from: show ? 0.1 : 0.99, to: 1)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .rotationEffect(.degrees(90))
            .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
            .frame(width: 100, height: 100)
                .animation(.easeOut(duration: 2))
                .onTapGesture {
                    self.show.toggle()
                }
            }
        }
    }
 struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
}
 }
 
