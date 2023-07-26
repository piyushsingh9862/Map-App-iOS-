//
//  Map_App__iOS_App.swift
//  Map App (iOS)
//
//  Created by Piyush Singh on 28/02/23.
//

import SwiftUI

@main
struct Map_App__iOS_App: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm )
        }
    }
}
