//
//  Frequency.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/27/22.
//

import Foundation

enum Frequency : CaseIterable, UnitProtocol{
   
    case hertz, kilohertz, megahertz, gigahertz
    
    var abbreviation: String{
        switch self {
        case .hertz:
            return "Hz"
        case .kilohertz:
            return "kHz"
        case .megahertz:
            return "MHz"
        case .gigahertz:
            return "GHz"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .hertz:
            return "hertz"
        case .kilohertz:
            return "kilohertz"
        case .megahertz:
            return "megahertz"
        case .gigahertz:
            return "gigahertz"
        }
    }
    
    

}

