    //
    //  ActivityRingViewController.swift
    //  WatchGroceryList Extension
    //
    //  Created by Timothy Vernon on 2/29/20.
    //  Copyright © 2020 Timothy Vernon. All rights reserved.
    //
    import SwiftUI
    import Foundation
    import WatchKit
    import HealthKit

    class ActivityRingViewController: WKInterfaceController {
    
   
        @IBOutlet weak var activityRingView: WKInterfaceActivityRing!
        
        @IBOutlet weak var activityRingLable: WKInterfaceLabel!
        
        let activityRingPresenter : ActivityRingPresenter
        let activitySummary = HKActivitySummary()
        
        
        
        override init() {
            activityRingPresenter = ActivityRingPresenter()
            
        }
        
        override func didAppear() {
            super.didAppear()
            
            

           
            activitySummary.activeEnergyBurned = HKQuantity(unit: HKUnit.largeCalorie(), doubleValue: 150)
            activitySummary.activeEnergyBurnedGoal = HKQuantity(unit:HKUnit.largeCalorie(), doubleValue: 300)
            
            activitySummary.appleExerciseTime = HKQuantity(unit: HKUnit.minute(), doubleValue: 25)
            activitySummary.appleExerciseTimeGoal = HKQuantity(unit: HKUnit.minute(), doubleValue: 30)
            
            activitySummary.appleStandHours = HKQuantity(unit: HKUnit.count(), doubleValue: 10)
            activitySummary.appleStandHoursGoal = HKQuantity(unit: HKUnit.count(), doubleValue: 25)
           
            activityRingView.setActivitySummary(activitySummary, animated: true)
          
                      
     activityRingPresenter.fetchCourseJSON{(dataModel,error)in
         
         if let data = dataModel{
             self.activityRingLable.setText(data.Season)
             for episode in data.Episodes{
                 print("Activity Ring View Controller Log:")
                 print( episode.Title)
             }
         }
         if let err = error{
             print (err)
         }
     }
            
        }
        
        
        

        
    }
    
