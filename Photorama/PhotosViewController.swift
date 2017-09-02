//
//  PhotosViewController.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 18/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchPhotos(photosURL: FlickrAPI.recentPhotosURL ) {
            (photosResult) -> Void in
            self.resultOffetchingPhotos(result: photosResult)
        }
    }
    
    @IBAction func showRecentPhotos(_ sender: UIButton) {
        store.fetchPhotos(photosURL: FlickrAPI.recentPhotosURL) {
            (photosResult) -> Void in
          self.resultOffetchingPhotos(result: photosResult)
        }
    }
    
    @IBAction func showInterestingPhotos(_ sender: UIButton) {
        store.fetchPhotos(photosURL: FlickrAPI.interestingPhotosURL ) {
            (photosResult) -> Void in
                self.resultOffetchingPhotos(result: photosResult)
        }

    }
    
    func resultOffetchingPhotos(result: PhotosResult) {
        
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

    func updateImageView(for photo: Photo) {
        store.fetchImage(for: photo) {
            (imageResult) -> Void in
            switch imageResult {
            case let .success(image):
                self.imageView.image = image
            case let .failure(error):
                print("Error downloading image: \(error)")
            }
        }
    }
    
    
}
