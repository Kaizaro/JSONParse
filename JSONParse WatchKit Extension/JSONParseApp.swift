//
//  JSONParseApp.swift
//  JSONParse WatchKit Extension
//
//  Created by Paul Zamshin on 10.10.2021.
//

import SwiftUI

@main
struct JSONParseApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
