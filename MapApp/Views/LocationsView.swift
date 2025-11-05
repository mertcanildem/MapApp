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
    
    var body: some View {
        ZStack {
            Map(position: $vm.mapRegion)
            
            VStack(spacing: 0) {
                header
                    .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}


//In order to keep the body clean and highly readable we use extension which is
//a continuous part of the body we just keep it here to make it less complicated

extension LocationsView {
    private var header: some View {
        VStack {
            
            Button { vm.toggleLocationsList() }
            label: {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
//                            .rotationEffect(Angle.degrees(vm.showLocationsList ? 180 : 0))
                        
                    }
            }
            if vm.showLocationsList {
                LocationsListView()
            }
                
            
        }
        .animation(.easeInOut, value: vm.showLocationsList)
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        

    }
}
