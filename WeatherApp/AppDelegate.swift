//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Mujahid on 11/09/20.
//  Copyright © 2020 Individual. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey(ApiKey.GOOGLE_MAP_API)
        return true
    }


}

