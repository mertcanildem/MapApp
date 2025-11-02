//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import Foundation
internal import Combine


class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
