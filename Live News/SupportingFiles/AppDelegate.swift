//
//  AppDelegate.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
//    var Detail: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        
        
        
        
        let liveNews = UINavigationController( rootViewController: LiveNewsRouter.createModule())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = liveNews
        window?.makeKeyAndVisible()
      
        
        

        
        return true
    }
    
    
    

}


