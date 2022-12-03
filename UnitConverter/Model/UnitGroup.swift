//
//  UnitGroup.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/2/22.
//

import Foundation


struct UnitGroup {
    private static let abbreviation = "abbreviation"
    private static let fullName = "fullName"
    private var units : [[String : String]]
    private var unitType : String
    
    init(unitType : String){
        self.units = []
        self.unitType = unitType
    }
    
    mutating func append(_ unit : Unit){
        self.units.append([UnitGroup.abbreviation : unit.abbreviation, UnitGroup.fullName : unit.fullName])
    }
    
    private func getUnitMember(keyword: String, _ index: Int) -> String {
        if ((index < self.units.count) && (index >= 0)){
            let member = self.units[index]
            return member[keyword] ?? ""
        }
        else{
            return ""
        }
    }
    
    func unitMemberAbbreviation(index: Int) -> String {
        return getUnitMember(keyword: UnitGroup.abbreviation, index)
    }
    
    func unitMemberFullName(index: Int) -> String {
        return getUnitMember(keyword: UnitGroup.fullName, index)
    }
    
    func getUnitType() -> String {
        return self.unitType
    }
    
    func getMemberCount() -> Int {
        return self.units.count
    }
}
