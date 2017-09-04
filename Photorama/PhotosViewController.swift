//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 18/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var store: PhotoStore!
    let photoDataSource = PhotoDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchPhotos(photosURL: FlickrAPI.recentPhotosURL ) {
            (photosResult) -> Void in
                self.takeAnActionAccordingToThe(result: photosResult)        }
    }
    
   private func takeAnActionAccordingToThe(result: PhotosResult) {
        switch result {
        case let .success(photos):
            print("Successfully found \(photos.count) photos.")
            if let firstPhoto = photos.first {
                self.updateImageView(for: firstPhoto)
            }
        case let .failure(error):
            print("Error fetching interesting photos: \(error)")
        }
    }   
}
