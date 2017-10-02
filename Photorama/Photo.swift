//
//  Photo.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 21/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import Foundation

class Photo {
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
   }

extension Photo: Equatable {
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        //Two photos are the same when they have the same photoID.
        return lhs.photoID == rhs.photoID
    }
}
