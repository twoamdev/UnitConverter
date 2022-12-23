//
//  Time.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/22/22.
//

import Foundation

enum Time : CaseIterable, UnitProtocol{
    
    case hours, minutes, seconds, nanoseconds, microseconds, milliseconds, days, weeks, months, years, decades, centuries
    
    var abbreviation: String {
        switch self {
        case .hours:
            return "hrs"
        case .minutes:
            return "min"
        case .seconds:
            return "sec"
        case .nanoseconds:
            return "nsec"
        case .microseconds:
            return "msec"
        case .milliseconds:
            return "mlsec"
        case .days:
            return "d"
        case .weeks:
            return "w"
        case .months:
            return "m"
        case .years:
            return "y"
        case .decades:
            return "dec"
        case .centuries:
            return "cen"
        }
    }
    
    var fullName: String {
        switch self {
        case .hours:
            return "hours"
        case .minutes:
            return "minutes"
        case .seconds:
            return "seconds"
        case .nanoseconds:
            return "nanoseconds"
        case .microseconds:
            return "microseconds"
        case .milliseconds:
            return "milliseconds"
        case .days:
            return "days"
        case .weeks:
            return "weeks"
        case .months:
            return "months"
        case .years:
            return "years"
        case .decades:
            return "decades"
        case .centuries:
            return "centuries"
        }
    }
}
