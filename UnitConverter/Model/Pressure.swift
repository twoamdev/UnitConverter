//
//  Pressure.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

enum Pressure : CaseIterable, UnitProtocol{
   
    case atmosphere, bar, pascal, poundFeetPerSqInch, torr
    
    var abbreviation: String{
        switch self {
        case .atmosphere:
            return "atm"
        case .bar:
            return "bar"
        case .pascal:
            return "Pa"
        case .poundFeetPerSqInch:
            return "psi"
        case .torr:
            return "Torr"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .atmosphere:
            return "atmosphere"
        case .bar:
            return "bar"
        case .pascal:
            return "pascal"
        case .poundFeetPerSqInch:
            return "pound-feet per square inch"
        case .torr:
            return "torr"
        }
    }
    
    

}



