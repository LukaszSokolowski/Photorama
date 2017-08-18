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
    static let baseURLString = "https://api.flickr.com/services/rest"
}
