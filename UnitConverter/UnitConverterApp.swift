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
    @State private var bootUpData : BootUp = UnitUtils.bootUpIndices()
    
    var body: some Scene {
        WindowGroup {
            ContentView(units: units,
                        unitTypeIndex: bootUpData.unitTypeIndex,
                        valueIndexA: bootUpData.valueAIndex,
                        valueIndexB: bootUpData.valueBIndex,
                        unitValueA: bootUpData.valueA,
                        unitValueB: bootUpData.valueB
            )
        }
    }
}
