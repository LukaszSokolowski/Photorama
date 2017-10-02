//
//  PhotoExtension.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 02/10/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import Foundation

extension Photo: Equatable {
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        //Two photos are the same when they have the same photoID.
        return lhs.photoID == rhs.photoID
    }
}
