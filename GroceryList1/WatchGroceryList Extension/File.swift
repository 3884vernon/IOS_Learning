//
//  File.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 2/22/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class InterfaceController: WKInterfaceController<ContentView> {
    
    @IBOutlet var MyAccountStatus: WKInterfaceActivityRing!
    
    override var body: ContentView {
        return ContentView()
    }
}
