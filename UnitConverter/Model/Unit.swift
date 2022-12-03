//
//  Unit.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/23/22.
//

import Foundation


struct Unit {
    let abbreviation : String
    let fullName : String
    
    init(_ abbreviation : String, _ fullName : String){
        self.abbreviation = abbreviation
        self.fullName = fullName
    }
}
