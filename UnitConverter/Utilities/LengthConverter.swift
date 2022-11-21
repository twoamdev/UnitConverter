//
//  LengthConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/19/22.
//

import Foundation

struct LengthConverter {
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        
        switch typeA {
        case Length.meters.fullName:
            return convertMetersToB(typeB,value)
        case Length.feet.fullName:
            return convertFeetToB(typeB,value)
        case Length.inches.fullName:
            return convertInchesToB(typeB,value)
        case Length.kilometers.fullName:
            return convertKilometersToB(typeB,value)
        case Length.nanometers.fullName:
            return convertNanometersToB(typeB,value)
        case Length.micrometers.fullName:
            return convertMicrometersToB(typeB,value)
        case Length.millimeters.fullName:
            return convertMillimetersToB(typeB,value)
        case Length.centimeters.fullName:
            return convertCentimetersToB(typeB,value)
        case Length.yards.fullName:
            return convertYardsToB(typeB,value)
        case Length.miles.fullName:
            return convertMilesToB(typeB,value)
            /*
        case Length.nauticalMiles.fullName:
            return convertNauticalMilesToB(typeB,value)*/
        
        default:
            return ""
        }
    }
    
    static private func convertMetersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return value
        case Length.feet.fullName:
            return convertMetersToFeet(value)
        case Length.inches.fullName:
            return convertMetersToInches(value)
        case Length.kilometers.fullName:
            return convertMetersToKilometers(value)
        case Length.nanometers.fullName:
            return convertMetersToNanometers(value)
        case Length.micrometers.fullName:
            return convertMetersToMicrometers(value)
        case Length.millimeters.fullName:
            return convertMetersToMillimeters(value)
        case Length.centimeters.fullName:
            return convertMetersToCentimeters(value)
        case Length.yards.fullName:
            return convertMetersToYards(value)
        case Length.miles.fullName:
            return convertMetersToMiles(value)
        default:
            return ""
        }
    }
    
    static private func convertFeetToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertFeetToMeters(value)
        case Length.feet.fullName:
            return value
        case Length.inches.fullName:
            return convertFeetToInches(value)
        case Length.kilometers.fullName:
            return convertFeetToKilometers(value)
        case Length.nanometers.fullName:
            return convertFeetToNanometers(value)
        case Length.micrometers.fullName:
            return convertFeetToMicrometers(value)
        case Length.millimeters.fullName:
            return convertFeetToMillimeters(value)
        case Length.centimeters.fullName:
            return convertFeetToCentimeters(value)
        case Length.yards.fullName:
            return convertFeetToYards(value)
        case Length.miles.fullName:
            return convertFeetToMiles(value)
            
        default:
            return ""
        }
    }
    
    static private func convertInchesToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertInchesToMeters(value)
        case Length.feet.fullName:
            return convertInchesToFeet(value)
        case Length.inches.fullName:
            return value
        case Length.kilometers.fullName:
            return convertInchesToKilometers(value)
        case Length.nanometers.fullName:
            return convertInchesToNanometers(value)
        case Length.micrometers.fullName:
            return convertInchesToMicrometers(value)
        case Length.millimeters.fullName:
            return convertInchesToMillimeters(value)
        case Length.centimeters.fullName:
            return convertInchesToCentimeters(value)
        case Length.yards.fullName:
            return convertInchesToYards(value)
        case Length.miles.fullName:
            return convertInchesToMiles(value)
        default:
            return ""
        }
    }
    
    static private func convertKilometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertKilometersToMeters(value)
        case Length.feet.fullName:
            return convertKilometersToFeet(value)
        case Length.inches.fullName:
            return convertKilometersToInches(value)
        case Length.kilometers.fullName:
            return value
        case Length.nanometers.fullName:
            return convertKilometersToNanometers(value)
        case Length.micrometers.fullName:
            return convertKilometersToMicrometers(value)
        case Length.millimeters.fullName:
            return convertKilometersToMillimeters(value)
        case Length.centimeters.fullName:
            return convertKilometersToCentimeters(value)
        case Length.yards.fullName:
            return convertKilometersToYards(value)
        case Length.miles.fullName:
            return convertKilometersToMiles(value)
        default:
            return ""
        }
    }
    
    static private func convertNanometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertNanometersToMeters(value)
        case Length.feet.fullName:
            return convertNanometersToFeet(value)
        case Length.inches.fullName:
            return convertNanometersToInches(value)
        case Length.kilometers.fullName:
            return convertNanometersToKilometers(value)
        case Length.nanometers.fullName:
            return value
        case Length.micrometers.fullName:
            return convertNanometersToMicrometers(value)
        case Length.millimeters.fullName:
            return convertNanometersToMillimeters(value)
        case Length.centimeters.fullName:
            return convertNanometersToCentimeters(value)
        case Length.yards.fullName:
            return convertNanometersToYards(value)
        case Length.miles.fullName:
            return convertNanometersToMiles(value)
            
        default:
            return ""
        }
    }
    
    static private func convertMicrometersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertMicrometersToMeters(value)
        case Length.feet.fullName:
            return convertMicrometersToFeet(value)
        case Length.inches.fullName:
            return convertMicrometersToInches(value)
        case Length.kilometers.fullName:
            return convertMicrometersToKilometers(value)
        case Length.nanometers.fullName:
            return convertMicrometersToNanometers(value)
        case Length.micrometers.fullName:
            return value
        case Length.millimeters.fullName:
            return convertMicrometersToMillimeters(value)
        case Length.centimeters.fullName:
            return convertMicrometersToCentimeters(value)
        case Length.yards.fullName:
            return convertMicrometersToYards(value)
        case Length.miles.fullName:
            return convertMicrometersToMiles(value)
        default:
            return ""
        }
    }
    
    static private func convertMillimetersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertMillimetersToMeters(value)
        case Length.feet.fullName:
            return convertMillimetersToFeet(value)
        case Length.inches.fullName:
            return convertMillimetersToInches(value)
        case Length.kilometers.fullName:
            return convertMillimetersToKilometers(value)
        case Length.nanometers.fullName:
            return convertMillimetersToNanometers(value)
        case Length.micrometers.fullName:
            return convertMillimetersToMicrometers(value)
        case Length.millimeters.fullName:
            return value
        case Length.centimeters.fullName:
            return convertMillimetersToCentimeters(value)
        case Length.yards.fullName:
            return convertMillimetersToYards(value)
        case Length.miles.fullName:
            return convertMillimetersToMiles(value)
        default:
            return ""
        }
    }
    
    static private func convertCentimetersToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertCentimetersToMeters(value)
        case Length.feet.fullName:
            return convertCentimetersToFeet(value)
        case Length.inches.fullName:
            return convertCentimetersToInches(value)
        case Length.kilometers.fullName:
            return convertCentimetersToKilometers(value)
        case Length.nanometers.fullName:
            return convertCentimetersToNanometers(value)
        case Length.micrometers.fullName:
            return convertCentimetersToMicrometers(value)
        case Length.millimeters.fullName:
            return convertCentimetersToMillimeters(value)
        case Length.centimeters.fullName:
            return value
        case Length.yards.fullName:
            return convertCentimetersToYards(value)
        case Length.miles.fullName:
            return convertCentimetersToMiles(value)
            
        default:
            return ""
        }
    }
    
    static private func convertYardsToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertYardsToMeters(value)
        case Length.feet.fullName:
            return convertYardsToFeet(value)
        case Length.inches.fullName:
            return convertYardsToInches(value)
        case Length.kilometers.fullName:
            return convertYardsToKilometers(value)
        case Length.nanometers.fullName:
            return convertYardsToNanometers(value)
        case Length.micrometers.fullName:
            return convertYardsToMicrometers(value)
        case Length.millimeters.fullName:
            return convertYardsToMillimeters(value)
        case Length.centimeters.fullName:
            return convertYardsToCentimeters(value)
        case Length.yards.fullName:
            return value
        case Length.miles.fullName:
            return convertYardsToMiles(value)
            
        default:
            return ""
        }
    }
    
    static private func convertMilesToB(_ typeB: String, _ value: String) -> String{
        switch typeB {
        case Length.meters.fullName:
            return convertMilesToMeters(value)
        case Length.feet.fullName:
            return convertMilesToFeet(value)
        case Length.inches.fullName:
            return convertMilesToInches(value)
        case Length.kilometers.fullName:
            return convertMilesToKilometers(value)
        case Length.nanometers.fullName:
            return convertMilesToNanometers(value)
        case Length.micrometers.fullName:
            return convertMilesToMicrometers(value)
        case Length.millimeters.fullName:
            return convertMilesToMillimeters(value)
        case Length.centimeters.fullName:
            return convertMilesToCentimeters(value)
        case Length.yards.fullName:
            return convertMilesToYards(value)
        case Length.miles.fullName:
            return value
            
        default:
            return ""
        }
    }
    
    static private func multiplyValue(_ value : String, multiplier : Double) -> String{
        if let numValue = Double(value){
            let convertedValue = numValue * multiplier
            return String(convertedValue)
        }
        else{
            return ""
        }
    }
    
    
    static private func convertFeetToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.3048)
    }
    
    static private func convertKilometersToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 1000.0)
    }
    
    static private func convertInchesToMeters(_ value : String) -> String{
        return convertFeetToMeters(convertInchesToFeet(value))
    }
    
    static private func convertNanometersToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.000000001)
    }
    
    static private func convertMicrometersToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.000001)
    }
    
    static private func convertMillimetersToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.001)
    }
    
    static private func convertCentimetersToMeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.01)
    }
    
    static private func convertYardsToMeters(_ value : String) -> String{
        return convertFeetToMeters(convertYardsToFeet(value))
    }
    
    static private func convertMilesToMeters(_ value : String) -> String{
        return convertFeetToMeters(convertMilesToFeet(value))
    }
    
    static private func convertKilometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertKilometersToMeters(value))
    }
    
    static private func convertMetersToFeet(_ value : String) -> String{
        return multiplyValue(value, multiplier: 3.280839895)
    }
    
    static private func convertInchesToFeet(_ value : String) -> String{
        return multiplyValue(value, multiplier: (1.0/12.0))
    }
    
    static private func convertNanometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToFeet(_ value : String) -> String{
        return convertMetersToFeet(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToFeet(_ value : String) -> String{
        return multiplyValue(value, multiplier: (3.0))
    }
    
    static private func convertMilesToFeet(_ value : String) -> String{
        return multiplyValue(value, multiplier: (5280.0))
    }
    
    static private func convertMetersToInches(_ value : String) -> String{
        return convertFeetToInches(convertMetersToFeet(value))
    }
    
    static private func convertFeetToInches(_ value : String) -> String{
        return multiplyValue(value, multiplier: 12.0)
    }
    
    static private func convertKilometersToInches(_ value : String) -> String{
        return convertKilometersToMeters(convertMetersToInches(value))
    }
    
    static private func convertNanometersToInches(_ value : String) -> String{
        return convertMetersToInches(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToInches(_ value : String) -> String{
        return convertMetersToInches(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToInches(_ value : String) -> String{
        return convertMetersToInches(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToInches(_ value : String) -> String{
        return convertMetersToInches(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToInches(_ value : String) -> String{
        return convertFeetToInches(convertYardsToFeet(value))
    }
    
    static private func convertMilesToInches(_ value : String) -> String{
        return convertFeetToInches(convertMilesToFeet(value))
    }
    
    static private func convertMetersToKilometers(_ value : String) -> String{
        return multiplyValue(value, multiplier: 0.001)
    }
    
    static private func convertFeetToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToKilometers(_ value : String) -> String{
        return convertFeetToKilometers(convertInchesToFeet(value))
    }
    
    static private func convertNanometersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertYardsToMeters(value))
    }
    
    static private func convertMilesToKilometers(_ value : String) -> String{
        return convertMetersToKilometers(convertMilesToMeters(value))
    }
    
    static private func convertMetersToNanometers(_ value : String) -> String{
        return multiplyValue(value, multiplier: 1000000000.0)
    }
    
    static private func convertFeetToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertKilometersToMeters(value))
    }
    
    static private func convertMicrometersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertYardsToMeters(value))
    }
    
    static private func convertMilesToNanometers(_ value : String) -> String{
        return convertMetersToNanometers(convertMilesToMeters(value))
    }
    
    static private func convertMetersToMicrometers(_ value : String) -> String{
        return multiplyValue(value, multiplier: 1000000.0)
    }
    
    static private func convertFeetToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertFeetToMeters(value))
    }
    
    static private func convertInchesToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertNanometersToMeters(value))
    }
    
    static private func convertMillimetersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertYardsToMeters(value))
    }
    
    static private func convertMilesToMicrometers(_ value : String) -> String{
        return convertMetersToMicrometers(convertMilesToMeters(value))
    }

    static private func convertMetersToMillimeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 1000.0)
    }
    
    static private func convertFeetToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertFeetToMeters(value))
    }
    
    static private func convertInchesToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertMicrometersToMeters(value))
    }
    
    static private func convertCentimetersToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertYardsToMeters(value))
    }
    
    static private func convertMilesToMillimeters(_ value : String) -> String{
        return convertMetersToMillimeters(convertMilesToMeters(value))
    }
    
    static private func convertMetersToCentimeters(_ value : String) -> String{
        return multiplyValue(value, multiplier: 100.0)
    }
    
    static private func convertFeetToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertFeetToMeters(value))
    }
    
    static private func convertInchesToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertInchesToMeters(value))
    }
    
    static private func convertKilometersToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertMillimetersToMeters(value))
    }
    
    static private func convertYardsToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertYardsToMeters(value))
    }
    
    static private func convertMilesToCentimeters(_ value : String) -> String{
        return convertMetersToCentimeters(convertMilesToMeters(value))
    }
    
    static private func convertMetersToYards(_ value : String) -> String{
        return convertFeetToYards(convertMetersToFeet(value))
    }
    
    static private func convertFeetToYards(_ value : String) -> String{
        return multiplyValue(value, multiplier: (1.0/3.0))
    }
    
    static private func convertInchesToYards(_ value : String) -> String{
        return convertFeetToYards(convertInchesToFeet(value))
    }
    
    static private func convertKilometersToYards(_ value : String) -> String{
        return convertMetersToYards(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToYards(_ value : String) -> String{
        return convertMetersToYards(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToYards(_ value : String) -> String{
        return convertMetersToYards(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToYards(_ value : String) -> String{
        return convertMetersToYards(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToYards(_ value : String) -> String{
        return convertMetersToYards(convertCentimetersToMeters(value))
    }
    
    static private func convertMilesToYards(_ value : String) -> String{
        return convertFeetToYards(convertMilesToFeet(value))
    }
    
    
    
    static private func convertMetersToMiles(_ value : String) -> String{
        return convertFeetToMiles(convertMetersToFeet(value))
    }
    
    static private func convertFeetToMiles(_ value : String) -> String{
        return multiplyValue(value, multiplier: (1.0/5280.0))
    }
    
    static private func convertInchesToMiles(_ value : String) -> String{
        return convertFeetToMiles(convertInchesToFeet(value))
    }
    
    static private func convertKilometersToMiles(_ value : String) -> String{
        return convertMetersToMiles(convertKilometersToMeters(value))
    }
    
    static private func convertNanometersToMiles(_ value : String) -> String{
        return convertMetersToMiles(convertNanometersToMeters(value))
    }
    
    static private func convertMicrometersToMiles(_ value : String) -> String{
        return convertMetersToMiles(convertMicrometersToMeters(value))
    }
    
    static private func convertMillimetersToMiles(_ value : String) -> String{
        return convertMetersToMiles(convertMillimetersToMeters(value))
    }
    
    static private func convertCentimetersToMiles(_ value : String) -> String{
        return convertMetersToMiles(convertCentimetersToMeters(value))
    }
    
    static private func convertYardsToMiles(_ value : String) -> String{
        return convertFeetToMiles(convertYardsToFeet(value))
    }
    
    
}
