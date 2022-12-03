//
//  UnitUtils.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/2/22.
//

import Foundation


struct UnitUtils{
    
    static func initializeUnitGroups() -> [UnitGroup]{
        var groups : [UnitGroup] = []
        
        for unitType in UnitType.allCases{
            var unitGroup = UnitGroup(unitType: unitType.name)
            for abbrevAndName in unitType.unitAbbreviationsAndNames{
                let unit = Unit(abbrevAndName.0,abbrevAndName.1)
                unitGroup.append(unit)
            }
            groups.append(unitGroup)
        }
        return groups
    }

}
