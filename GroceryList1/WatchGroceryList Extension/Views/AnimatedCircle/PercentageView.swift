//
//  PercentageView.swift
//  WatchGroceryList Extension
//
//  Created by Timothy Vernon on 4/1/20.
//  Copyright © 2020 Timothy Vernon. All rights reserved.
//

import SwiftUI

//User input models
let setBudget: Float = 35
let transactionValue: Float = 32

//Calculate the amount remaining in your budget
let amountRemainingDbl: Float = setBudget - transactionValue
let amountRemainingText: String = "$ \(amountRemainingDbl) Remaining"

//Calculate the Percentage remaining
let percentOfBudgetSpent: CGFloat = CGFloat((amountRemainingDbl/setBudget))
let percentOfBudgetSpentText: String = " \(1-percentOfBudgetSpent)%"


struct PercentageView: View {
    var body: some View {
            Text(percentOfBudgetSpentText)
                .fontWeight(.heavy)
        }
    }

#if DEBUG
struct PercentageView_Previews: PreviewProvider {
    static var previews: some View {
        PercentageView()
    }
}
#endif
