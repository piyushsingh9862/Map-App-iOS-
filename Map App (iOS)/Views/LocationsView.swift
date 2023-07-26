//
//  LocationsView.swift
//  Map App (iOS)
//
//  Created by Piyush Singh on 26/07/23.
//

import SwiftUI
import MapKit



struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
 
    
  
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion )
                .ignoresSafeArea()
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
