//
//  PlaneAngle.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

enum PlaneAngle : CaseIterable, UnitProtocol{
   
    case arcSeconds, degrees, radians, milliradians, gradians, minuteOfArc
    
    var abbreviation: String{
        switch self {
        case .arcSeconds:
            return "arcsec"
        case .degrees:
            return "deg"
        case .radians:
            return "rad"
        case .milliradians:
            return "mrad"
        case .gradians:
            return "grad"
        case .minuteOfArc:
            return "arcmin"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .arcSeconds:
            return "arc seconds"
        case .degrees:
            return "degrees"
        case .radians:
            return "radians"
        case .milliradians:
            return "milliradians"
        case .gradians:
            return "gradians"
        case .minuteOfArc:
            return "minute of arc"
        }
    }
}



