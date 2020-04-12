        //
        //  ActivityRingPresenter.swift
        //  WatchGroceryList Extension
        //
        //  Created by Timothy Vernon on 2/29/20.
        //  Copyright © 2020 Timothy Vernon. All rights reserved.
        //
        // This file presents data to the view controller;
        // Use this file to test if the data is being presented to the view controller correctly

        import Foundation

        class ActivityRingPresenter: NSObject{

            var seasonTitle:String?

            
            func fetchCourseJSON(completion:@escaping (ActivityRingDataModel?,Error?)->()) {
            let urlString = "https:www.omdbapi.com/?apikey=31240b59&t=Game%20of%20Thrones&Season=1"
            guard let url = URL(string :urlString) else { return  }
            URLSession.shared.dataTask(with: url) { (data, response, err) in
                let jsonDecoder = JSONDecoder()
                if let  data = data{
                    do{
                       let dataVal = try jsonDecoder.decode(ActivityRingDataModel.self, from: data)
                        print (dataVal)
                    }catch let error{
                        print(error)
                    }
            }
                if let error = err{
                    print("Error Fetching Data with error:\(error)")
                    completion(nil,error)
                 return
                }
               }.resume()

            }
        }
