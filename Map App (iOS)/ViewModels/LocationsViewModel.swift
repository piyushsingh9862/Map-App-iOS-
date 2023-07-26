//
//  LocationsViewModel.swift
//  Map App (iOS)
//
//  Created by Piyush Singh on 26/07/23.
//

import Foundation

class LocationsViewModel : ObservableObject {
    
    @Published var locations: [Location]
    
    init()
    {
        let locations = LocationsDataService.locations
        self.locations=locations
        
    }
    
}
