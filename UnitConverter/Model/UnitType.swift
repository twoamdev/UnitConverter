//
//  UnitType.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/3/22.
//

import Foundation



enum UnitType : CaseIterable{
    case length, temperature, speed, time, volume, mass, energy, frequency, area, pressure, planeAngle, fuelEconomy, digitalStorage
    
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
        case .volume:
            return "volume"
        case .mass:
            return "mass"
        case .energy:
            return "energy"
        case .frequency:
            return "frequency"
        case .area:
            return "area"
        case .pressure:
            return "pressure"
        case .planeAngle:
            return "plane angle"
        case .fuelEconomy:
            return "fuel economy"
        case .digitalStorage:
            return "digital storage"
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
        case .volume:
            return self.getAbbreviationsAndNames(unitCases: Volume.allCases)
        case .mass:
            return self.getAbbreviationsAndNames(unitCases: Mass.allCases)
        case .energy:
            return self.getAbbreviationsAndNames(unitCases: Energy.allCases)
        case .frequency:
            return self.getAbbreviationsAndNames(unitCases: Frequency.allCases)
        case .area:
            return self.getAbbreviationsAndNames(unitCases: Area.allCases)
        case .pressure:
            return self.getAbbreviationsAndNames(unitCases: Pressure.allCases)
        case .planeAngle:
            return self.getAbbreviationsAndNames(unitCases: PlaneAngle.allCases)
        case .fuelEconomy:
            return self.getAbbreviationsAndNames(unitCases: FuelEconomy.allCases)
        case .digitalStorage:
            return self.getAbbreviationsAndNames(unitCases: DigitalStorage.allCases)
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
