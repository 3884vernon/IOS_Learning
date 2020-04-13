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
        
         List(episodes, id: \.Title) { item in
            VStack(alignment: .leading) {
                           Text(item.Title)
                               .font(.headline)
                           Text(item.Released)
            }
         }

    .onAppear(perform: getJSON)
    }
                func getJSON() {
                 let urlString = "https:www.omdbapi.com/?apikey=31240b59&t=Game%20of%20Thrones&Season=1"
                guard let url = URL(string: urlString) else {return}
                URLSession.shared.dataTask(with: url) { (data,response, error) in
                            if let data = data {
                            if let decodedResponse = try? JSONDecoder().decode(ActivityRingDataModel.self, from: data) {
                                // we have good data – go back to the main thread
                                DispatchQueue.main.async {
                                    // update our UI
                                            self.episodes = decodedResponse.Episodes
                                }
                    return
                    }
                }
                    print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")

                }
                    .resume()
                }
        }
        
    


   struct ContentView_Previews: PreviewProvider {
       static var previews: some View {
           ContentView()
       }
    }



