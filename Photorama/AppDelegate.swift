//
//  AppDelegate.swift
//  Photorama
//
//  Created by Łukasz Sokołowski on 17/08/2017.
//  Copyright © 2017 Łukasz Sokołowski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let rootViewController = window!.rootViewController as! UINavigationController
        let photosViewController =
            rootViewController.topViewController as! PhotosViewController
        photosViewController.store = PhotoStore()
        
        return true
    }
}

