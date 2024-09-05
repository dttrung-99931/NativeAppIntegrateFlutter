//
//  ContentView.swift
//  ios_app
//
//  Created by PTT on 05/09/2024.
//

import SwiftUI
import Flutter

struct FlutterViewControllerRepresentable: UIViewControllerRepresentable {
    
    @EnvironmentObject var flutterDependencies: FlutterDependencies

    func makeUIViewController(context: Context) -> some UIViewController {
        return FlutterViewController(
            engine: flutterDependencies.flutterEngine,
            nibName: nil,
            bundle: nil
        )
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct FlutterContentView: View {
    
    var body: some View {
        FlutterViewControllerRepresentable()
    }
}

