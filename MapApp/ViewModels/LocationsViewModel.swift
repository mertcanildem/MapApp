//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import Foundation
internal import Combine
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        //Every time we set the value for mapLocation,
        //we're then going to call updateMapRegion(location: mapLoc)
        //and we're going to pass the current mapLocation
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion = MapCameraPosition.region(MKCoordinateRegion())
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MapCameraPosition.region(
                MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
                span: mapSpan))
        }
    }
}
