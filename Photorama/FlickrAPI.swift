//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 18/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import Foundation

enum Method: String {
    case interestingPhotos = "flickr.interestingness.getList"
}
struct FlickrAPI {
    
    private static let baseURLString = "https://api.flickr.com/services/rest"
    
    static var interestingPhotosURL: URL {
        return flickrURL(method: .interestingPhotos, parameters: ["extras":"url_h,date_taken"])
    }
        
    private static func flickrURL(method: Method, parameters: [String:String]?) -> URL {
        return URL(string: "")!
    }
}
