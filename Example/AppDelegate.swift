//
//  AppDelegate.swift
//  Example
//
//  Created by Florian Burger on 18/08/16.
//  Copyright © 2016 Florian Bürger. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let frame = UIScreen.mainScreen().bounds
        window = UIWindow(frame: frame)
        window?.rootViewController = ViewController.newFromStoryboard()
        window?.makeKeyAndVisible()
        
        return true
    }
}

