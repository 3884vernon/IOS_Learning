    //
    //  ActivityRingDataModel.swift
    //  WatchGroceryList Extension
    //
    //  Created by Timothy Vernon on 2/29/20.
    //  Copyright © 2020 Timothy Vernon. All rights reserved.
    //

    import Foundation
    
    struct ActivityRingDataModel: Decodable {
        let Title:String
        let Season:String
        let totalSeasons:String
        let Episodes:[EpisodeModel]
        
    }
    struct EpisodeModel :Decodable {
        let Title: String
        let Episode: String
        let Released: String
    }


