//
//  LocationView.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import SwiftUI
internal import Combine
import MapKit


struct LocationsView: View {
    
//    @StateObject private var vm = LocationsViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    
    @State private var mapRegion = MapCameraPosition
        .region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
    
    var body: some View {
        ZStack {
            Map(position: $mapRegion)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
