//
//  BootUp.swift
//  UnitConverter
//
//  Created by Ben Nelson on 12/3/22.
//

import Foundation


struct BootUp {
    var unitTypeIndex : Int
    var valueAIndex : Int
    var valueBIndex : Int
    var valueA : String
    var valueB : String
    
    init(_ unitTypeIndex : Int, _ valueAIndex: Int, _ valueBIndex: Int, _ valueA: String, _ valueB: String){
        self.unitTypeIndex = unitTypeIndex
        self.valueAIndex = valueAIndex
        self.valueBIndex = valueBIndex
        self.valueA = valueA
        self.valueB = valueB
    }
    

    
    
}
