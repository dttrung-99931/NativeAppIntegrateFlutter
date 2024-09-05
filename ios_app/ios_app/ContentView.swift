//
//  ContentView.swift
//  ios_app
//
//  Created by PTT on 05/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Open flutter app feature") {
                    FlutterContentView()
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
