//
//  TimeConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/22/22.
//

import XCTest
@testable import UnitConverter


struct TimeConverterTests {
    
    func run(){
        runHoursToMinutes()
        runHoursToSeconds()
        runMinutesToHours()
        runMinutesToSeconds()
        runSecondsToHours()
        runSecondsToMinutes()
    }
    
    private func runHoursToMinutes(){
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "60")
    }
    
    private func runHoursToSeconds(){
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "3600")
    }
    
    private func runMinutesToHours(){
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.hours.fullName,
                        value: "60", expectedResult: "1")
    }
    
    private func runMinutesToSeconds(){
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "60")
    }
    
    private func runSecondsToHours(){
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.hours.fullName,
                        value: "3600", expectedResult: "1")
    }
    
    private func runSecondsToMinutes(){
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.minutes.fullName,
                        value: "60", expectedResult: "1")
    }
}
