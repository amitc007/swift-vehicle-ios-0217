//
//  AppDelegate.swift
//  swift-vehicle-lab
//
//  Created by Flatiron School on 7/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        /**
         
         * Manually test your classes here.
         
         */
        
        let v = Vehicle(name: "testVehicle",weight: 200, maxSpeed: 150)
        print("v=\(v.speed)")
        v.goFast()
        print("after goFast v=\(v.speed)")
        
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////
