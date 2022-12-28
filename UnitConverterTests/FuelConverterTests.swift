//
//  FuelConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/28/22.
//

import XCTest
@testable import UnitConverter


struct FuelConverterTests {
    func run(){
        let mpg = TestMap(UnitType.fuelEconomy.name,
                            testUnit: TestUnit(FuelEconomy.milesPerGallon.fullName, "3.2"),
                            compareUnits: [
                                TestUnit(FuelEconomy.milesPerGallon.fullName, "3.2"),
                                TestUnit(FuelEconomy.milesPerImperialGallons.fullName, "3.84304"),
                                TestUnit(FuelEconomy.kilometersPerLiter.fullName, "1.36046"),
                                TestUnit(FuelEconomy.litersPer100Kilometers.fullName, "73.5046"),
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: mpg)
        
        let imperialMpg = TestMap(UnitType.fuelEconomy.name,
                            testUnit: TestUnit(FuelEconomy.milesPerImperialGallons.fullName, "94.2"),
                            compareUnits: [
                                TestUnit(FuelEconomy.milesPerGallon.fullName, "78.43791"),
                                TestUnit(FuelEconomy.milesPerImperialGallons.fullName, "94.2"),
                                TestUnit(FuelEconomy.kilometersPerLiter.fullName, "33.34738"),
                                TestUnit(FuelEconomy.litersPer100Kilometers.fullName, "2.998736"),
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: imperialMpg)
        
        let litersPer100 = TestMap(UnitType.fuelEconomy.name,
                            testUnit: TestUnit(FuelEconomy.litersPer100Kilometers.fullName, "7.8"),
                            compareUnits: [
                                TestUnit(FuelEconomy.milesPerGallon.fullName, "30.1557"),
                                TestUnit(FuelEconomy.milesPerImperialGallons.fullName, "36.2155"),
                                TestUnit(FuelEconomy.kilometersPerLiter.fullName, "12.8205"),
                                TestUnit(FuelEconomy.litersPer100Kilometers.fullName, "7.8"),
                                
                            ])
        TestUtils.convertMulitpleAssertions(mapping: litersPer100)
       
       
    }
    
}




