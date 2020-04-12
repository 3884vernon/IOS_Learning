//
//  AmountRemainingView.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 4/2/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

struct AmountRemainingView: View {
    var body: some View {
        Rectangle ()
            .frame(width: 60, height: 6)
            .cornerRadius(3.0)
            .opacity(0.3)
        Text(amountRemainingText)
         .font(.headline)
    
    }
}

struct AmountRemainingView_Previews: PreviewProvider {
    static var previews: some View {
        AmountRemainingView()
    }
}
