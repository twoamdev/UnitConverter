//
//  TemperatureConverter.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/11/22.
//

import Foundation

struct TemperatureConverter{
    static func convertAtoB(typeA: String, typeB: String, value : String) -> String{
        
        if typeA == Temperature.fahrenheit.fullName && typeB == Temperature.fahrenheit.fullName {
            return value
        }
        if typeA == Temperature.fahrenheit.fullName && typeB == Temperature.celsius.fullName {
            return convertFahrenheitToCelsius(value)
        }
        if typeA == Temperature.fahrenheit.fullName && typeB == Temperature.kelvin.fullName {
            return convertFahrenheitToKelvin(value)
        }
        if typeA == Temperature.celsius.fullName && typeB == Temperature.celsius.fullName {
            return value
        }
        if typeA == Temperature.celsius.fullName && typeB == Temperature.fahrenheit.fullName {
            return convertCelsiusToFahrenheit(value)
        }
        if typeA == Temperature.celsius.fullName && typeB == Temperature.kelvin.fullName {
            return convertCelsiusToKelvin(value)
        }
        if typeA == Temperature.kelvin.fullName && typeB == Temperature.kelvin.fullName {
            return value
        }
        if typeA == Temperature.kelvin.fullName && typeB == Temperature.fahrenheit.fullName {
            return convertKelvinToFahrenheit(value)
        }
        if typeA == Temperature.kelvin.fullName && typeB == Temperature.celsius.fullName {
            return convertKelvinToCelsius(value)
        }
        return ""
    }
    
    static private func convertFahrenheitToCelsius(_ value : String) -> String{
        return Converter.multiplyValue(Converter.subtractValue(value, subtractValue: 32), multiplier: (5.0/9.0))
    }
    
    static private func convertFahrenheitToKelvin(_ value : String) -> String{
        return Converter.addValue(convertFahrenheitToCelsius(value), addValue: 273.15)
    }
    
    static private func convertCelsiusToFahrenheit(_ value : String) -> String{
        return Converter.addValue(Converter.multiplyValue(value, multiplier: (9.0/5.0)), addValue: 32)
    }
    
    static private func convertCelsiusToKelvin(_ value : String) -> String{
        return Converter.addValue(value, addValue: 273.15)
    }
    
    static private func convertKelvinToFahrenheit(_ value : String) -> String{
        return convertCelsiusToFahrenheit(convertKelvinToCelsius(value))
    }
    
    static private func convertKelvinToCelsius(_ value : String) -> String{
        return Converter.subtractValue(value, subtractValue: 273.15)
    }
    
    
    
    
}
