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
    
    static func bootUpIndices() -> BootUp {
        let startUnitType = UnitType.length.name
        let startValueA = Length.meters.fullName
        let startValueB = Length.feet.fullName
        let groups = initializeUnitGroups()
        
        var startIndex = 0
        for group in groups {
            if group.getUnitType() == startUnitType{
                break
            }
            startIndex += 1
        }
        
        var valueAIndex = 0
        var valueBIndex = 0
        for i in 0..<groups[startIndex].getMemberCount(){
            let name = groups[startIndex].unitMemberFullName(index: i)
            if name == startValueA{
                valueAIndex = i
            }
            if name == startValueB{
                valueBIndex = i
            }
        }
        return BootUp(startIndex, valueAIndex, valueBIndex, startValueA, startValueB)
    }

}
