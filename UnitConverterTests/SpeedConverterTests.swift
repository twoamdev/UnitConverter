//
//  SpeedConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/22/22.
//

import XCTest
@testable import UnitConverter


struct SpeedConverterTests {
    
    func run(){
        runMilesPerHourToFeetPerSecond()
        runFeetPerSecondToMilesPerHour()
    }
    
    private func runMilesPerHourToFeetPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "2", expectedResult: "2.9333333333")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "0.0009438", expectedResult: "0.00138424")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "9878.987", expectedResult: "14489.1809333333")
    }
    
    private func runFeetPerSecondToMilesPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "0.493", expectedResult: "0.3361363636")
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "5280", expectedResult: "3600")
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "5.1", expectedResult: "3.4772727273")
    }
}
