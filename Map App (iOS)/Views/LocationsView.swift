//
//  LocationsView.swift
//  Map App (iOS)
//
//  Created by Piyush Singh on 26/07/23.
//

import SwiftUI



struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
  
    var body: some View {
        List{
            ForEach(vm.locations){
                
                Text($0.name)
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
