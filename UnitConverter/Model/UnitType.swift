//
//  UnitType.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/3/22.
//

import Foundation



enum UnitType : CaseIterable{
    case length, temperature
    
    var name : String {
        switch self{
        case .length:
            return "length"
        case .temperature:
            return "temperature"
        }
    }
    
    var unitAbbreviationsAndNames : [(String, String)]{
        switch self{
        case .length:
            return self.getAbbreviationsAndNames(unitCases: Length.allCases)

        case .temperature:
            return self.getAbbreviationsAndNames(unitCases: Temperature.allCases)
        }
    }
    
    private func getAbbreviationsAndNames (unitCases : [UnitProtocol]) -> [(String,String)] {
        var abbreviationsAndNames : [(String,String)] = []
        for unitCase in unitCases{
            let unit = (unitCase.abbreviation, unitCase.fullName)
            abbreviationsAndNames.append(unit)
        }
        return abbreviationsAndNames
    }
    
}
