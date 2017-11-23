//
//  AppDelegate.swift
//  SampleNavigationDrawerController
//
//  Created by Ayham Hylam on 23/11/2017.
//  Copyright © 2017 Jasmin. All rights reserved.
//

import UIKit
import Material

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = sb.instantiateViewController(withIdentifier: "MainViewController")
        let leftVC = sb.instantiateViewController(withIdentifier: "LeftViewController")
        
        //let root = UINavigationController(rootViewController: mainVC)
        let root = NavigationController(rootViewController: mainVC)
        
        let nd = NavigationDrawerController(rootViewController: root, leftViewController: leftVC, rightViewController: nil)
        nd.setLeftViewWidth(width: 270, isHidden: true, animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nd
        window?.makeKeyAndVisible()
        
        return true
    }
}

