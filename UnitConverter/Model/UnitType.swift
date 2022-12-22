//
//  UnitType.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/3/22.
//

import Foundation



enum UnitType : CaseIterable{
    case length, temperature, speed, time
    
    var name : String {
        switch self{
        case .length:
            return "length"
        case .temperature:
            return "temperature"
        case .speed:
            return "speed"
        case .time:
            return "time"
        }
    }
    
    var unitAbbreviationsAndNames : [(String, String)]{
        switch self{
        case .length:
            return self.getAbbreviationsAndNames(unitCases: Length.allCases)
        case .temperature:
            return self.getAbbreviationsAndNames(unitCases: Temperature.allCases)
        case .speed:
            return self.getAbbreviationsAndNames(unitCases: Speed.allCases)
        case .time:
            return self.getAbbreviationsAndNames(unitCases: Time.allCases)
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
