//
//  AnimatedCircle.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 3/30/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

//Data Model <Monetary Transactions>

struct AnimatedCircle: View {
        @State var show = false
               var body: some View {
                   VStack(spacing: 30) {
         // Create Rectangular Text Label
                    Rectangle ()
                           .frame(width: 60, height: 6)
                           .cornerRadius(3.0)
                           .opacity(0.3)
                       Text(amountRemainingText)
                        .font(.headline)
                    
        // Creat Circle Creation
                         ZStack {
                                  
                            Text(percentOfBudgetSpentText)
                            
                            //Create static tracklayer
                            Circle()
                                .stroke(Color.red.opacity(0.1),style: StrokeStyle(lineWidth: 10, lineCap: .round))

                                                   .frame(width: 100, height: 100)
                                                   .shadow(radius: 10)
                            //Create circle Animation
                            Circle()
                        .trim(from: show ? percentOfBudgetSpent : 0.99, to: 1)
                                .stroke(Color.red,style: StrokeStyle(lineWidth: 10, lineCap: .round))
                        .rotationEffect(.degrees(90))
                        .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                        .frame(width: 100, height: 100)
        //Create circle Animation
                        .shadow(radius: 10)
                        .animation(.easeOut(duration: 2))
                        .onTapGesture {
                               self.show.toggle()
                       }
                    }
                }
                       }
                   }
               

struct AnimatedCircle_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedCircle()
    }
}
