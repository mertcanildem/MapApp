//
//  MapAppApp.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
