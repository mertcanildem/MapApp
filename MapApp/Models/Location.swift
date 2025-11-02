//
//  Location.swift
//  MapApp
//
//  Created by Mert can Ildem on 2.11.2025.
//

import Foundation
import MapKit

struct Location: Identifiable{
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        //name = "Colosseum"
        //cityName = "Rome"
        //id = "ColosseumRome"
        name + cityName
    }
}



