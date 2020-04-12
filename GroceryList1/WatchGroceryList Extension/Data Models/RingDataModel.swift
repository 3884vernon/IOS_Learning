//
//  RingDataModel.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 4/4/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI


struct RingDataModel: Decodable, Identifiable {
    let id: UUID
    let Title: String
    let Season: String
    let totalSeasons: String
    let Episodes:[EpisodeModel]
    
}


struct RingDataModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
