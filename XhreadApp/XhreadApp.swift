//
//  XhreadApp.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/28.
//

import SwiftUI
//import Firebase
//import FirebaseAuth
//import FirebaseAnalytics
//import FirebaseFirestore

//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//    return true
//  }
//}

@main
struct XhreadApp: App {
//    register app delegate for Firebase setup
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView(
                )
                .modelContainer(for: Post.self)
        }
    }
}
