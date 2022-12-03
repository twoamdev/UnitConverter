//
//  UnitConverterApp.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI

@main
struct UnitConverterApp: App {
    @State private var units : [UnitGroup] = UnitUtils.initializeUnitGroups()
    
    var body: some Scene {
        WindowGroup {
            ContentView(units : units)
        }
    }
}
