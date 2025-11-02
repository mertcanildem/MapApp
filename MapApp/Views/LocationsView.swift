//
//  LocationView.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import SwiftUI
internal import Combine


struct LocationsView: View {
    
//    @StateObject private var vm = LocationsViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
