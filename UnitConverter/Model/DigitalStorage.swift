//
//  DigitalStorage.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/28/22.
//

import Foundation

enum DigitalStorage : CaseIterable, UnitProtocol{
   
    case bits, kilobits, kibibits, megabits, mebibits, gigabits, gibibits, terabits, tebibits, petabits, pebibits, bytes, kilobytes, kibibytes, megabytes, mebibytes, gigabytes, gibibytes, terabytes, tebibytes, petabytes, pebibytes
    
    var abbreviation: String{
        switch self {
        case .bits:
            return "bits"
        case .kilobits:
            return "kbits"
        case .kibibits:
            return "kibbits"
        case .megabits:
            return "mbits"
        case .mebibits:
            return "mebbits"
        case .gigabits:
            return "gbits"
        case .gibibits:
            return "gibbits"
        case .terabits:
            return "tbits"
        case .tebibits:
            return "tibbits"
        case .petabits:
            return "pbits"
        case .pebibits:
            return "pibbits"
        case .bytes:
            return "B"
        case .kilobytes:
            return "KB"
        case .kibibytes:
            return "KbB"
        case .megabytes:
            return "MB"
        case .mebibytes:
            return "MbB"
        case .gigabytes:
            return "GB"
        case .gibibytes:
            return "GbB"
        case .terabytes:
            return "TB"
        case .tebibytes:
            return "TbB"
        case .petabytes:
            return "PB"
        case .pebibytes:
            return "PbB"
        }
        
    }
    
    var fullName: String{
        switch self {
        case .bits:
            return "bits"
        case .kilobits:
            return "kilobits"
        case .kibibits:
            return "kibibits"
        case .megabits:
            return "megabits"
        case .mebibits:
            return "mebibits"
        case .gigabits:
            return "gigabits"
        case .gibibits:
            return "gibibits"
        case .terabits:
            return "terabits"
        case .tebibits:
            return "tebibits"
        case .petabits:
            return "petabits"
        case .pebibits:
            return "pebibits"
        case .bytes:
            return "bytes"
        case .kilobytes:
            return "kilobytes"
        case .kibibytes:
            return "kibibytes"
        case .megabytes:
            return "megabytes"
        case .mebibytes:
            return "mebibytes"
        case .gigabytes:
            return "gigabytes"
        case .gibibytes:
            return "gibibytes"
        case .terabytes:
            return "terabytes"
        case .tebibytes:
            return "tebibytes"
        case .petabytes:
            return "petabytes"
        case .pebibytes:
            return "pebibytes"
        }
    }
    
    

}




