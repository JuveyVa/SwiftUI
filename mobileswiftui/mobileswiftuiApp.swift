//
//  mobileswiftuiApp.swift
//  mobileswiftui
//
//  Created by ITIT on 13/02/25.
//

import SwiftUI

@main
struct mobileswiftuiApp: App {
    init() {
            UNUserNotificationCenter.current().delegate = NotificationDelegate.shared
        }
    
    var body: some Scene {
        WindowGroup {
            NotificationView()
        }
    }
}
