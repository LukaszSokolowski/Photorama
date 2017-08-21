//
//  PhotoStore.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 19/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import Foundation

class PhotoStore {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchInterestingPhotos() {
        
        let url = FlickrAPI.interestingPhotosURL
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data,response,error) -> Void in
            
            if let jsonData = data {
            do {
                
                let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
                    print(jsonObject)
                
            } catch let error {
                    print("Error creating JSON object: \(error)")
                }
            } else if let requestError = error {
                    print("Error fetching interesting photos: \(requestError)")
            }
               else {
                  print("Unexpected error with the request")
            }
       }
        task.resume()
    }
}
