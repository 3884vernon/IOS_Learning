//
//  EpisodeListView.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 4/11/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

struct EpisodeListView: View {
    var body: some View {
     
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Text("Testing")
        }
            
    }
}

struct EpisodeListView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeListView()
    }
}
