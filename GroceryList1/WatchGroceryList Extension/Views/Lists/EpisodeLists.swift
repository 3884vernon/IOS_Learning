//
//  EpisodeLists.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 4/5/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.

//func getJSON(completion: @escaping(RingDataModel?, Error?) -> ()) {

import SwiftUI
import Foundation
import WatchKit
import HealthKit


//class EpisodeList: NSObject {
//
//    var listPresenter = ListPresenter()
//ListPresenter.getJSON{(dataModel,error)in
//
//               if let data = dataModel{
//                   self.activityRingLable.setText(data.Title)
//                   for episode in data.Episodes{
//                       print( episode.Title)
//                   }
//               }
//               if let err = error{
//                   print (err)
//               }
//           }
//
//}
struct EpisodeLists {
    var body: some View {
        AnimatedCircle ()
    }
}

struct EpisodeLists_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
