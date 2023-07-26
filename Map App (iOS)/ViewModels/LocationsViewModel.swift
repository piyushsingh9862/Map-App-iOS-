//
//  LocationsViewModel.swift
//  Map App (iOS)
//
//  Created by Piyush Singh on 26/07/23.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel : ObservableObject {
    //All loaded locations
    @Published var locations: [Location]
    
    //Current location on Map
    @Published var mapLocation: Location{
        didSet{
             updateMapRegion(location: mapLocation)
        }
    }
    
    //Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    //Show list of locations
    @Published var showLocationsList: Bool = false
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init()
    {
        let locations = LocationsDataService.locations
        self.locations=locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
        
    }
    
    private func updateMapRegion(location: Location)
    {
        withAnimation(.easeInOut)
        {
            mapRegion=MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func toggleLocationsList(){
        withAnimation(.easeInOut){
            showLocationsList = !showLocationsList
            
        }
    }
    
    func showNextLocation(location:Location) {
        
        withAnimation(.easeInOut){
            mapLocation=location
            showLocationsList=false
        }
        
    }
}
