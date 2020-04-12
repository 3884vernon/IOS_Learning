//
//  ContentView.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 2/12/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

//<Create Animated Circle

struct ContentView: View {
    @State private var episodes = [EpisodeModel]()
    
    var body: some View {
        
//         List(episodes, id: \.Title) { item in
//            VStack(alignment: .leading) {
//                           Text(item.Released)
//                               .font(.headline)
//                           Text(item.Title)
//            }
//         }
//
//         .onAppear
//            {
//                Api().getJSON { (episodes) in
//                    self.episodes = episodes.Episodes
//                    print(episodes.Episodes)
//                }
                
        HStack {
            Spacer()
            AnimatedCircle ()
            VStack {
EpisodeListView()
                
            }

        }

    }
    }


    

   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
    }



