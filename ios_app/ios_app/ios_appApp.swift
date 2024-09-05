//
//  ios_appApp.swift
//  ios_app
//
//  Created by PTT on 05/09/2024.
//

import SwiftUI
import Flutter
// The following library connects plugins with iOS platform code to this app.
import FlutterPluginRegistrant

class FlutterDependencies: ObservableObject {
    let flutterEngine = FlutterEngine(name: "My Flutter Engine")
    
    init(){
        // Run default dart entry point with default route
        flutterEngine.run()
        // Connect the flutter app plugins with this ios app
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
    }
}

@main
struct ios_appApp: App {
    var flutterDependencies = FlutterDependencies()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(flutterDependencies)
        }
    }
}
