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
        //miles per hour
        runMilesPerHourToFeetPerSecond()
        runMilesPerHourToMetersPerSecond()
        runMilesPerHourToKilometersPerHour()
        runMilesPerHourToKnots()

        //feet per second
        runFeetPerSecondToMilesPerHour()
        runFeetPerSecondToMetersPerSecond()
        runFeetPerSecondToKilometersPerHour()
        runFeetPerSecondToKnots()
        
        //meters per second
        runMetersPerSecondToMilesPerHour()
        runMetersPerSecondToFeetPerSecond()
        runMetersPerSecondToKilometersPerHour()
        runMetersPerSecondToKnots()
        
        //kilometers per hour
        runKilometersPerHourToMilesPerHour()
        runKilometersPerHourToFeetPerSecond()
        runKilometersPerHourToMetersPerSecond()
        runKilometersPerHourToKnots()
        
        //knots
        runKnotsToMilesPerHour()
        runKnotsToFeetPerSecond()
        runKnotsToMetersPerSecond()
        runKnotsToKilometersPerHour()
    }

    private func runMilesPerHourToFeetPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "2", expectedResult: "2.9333333333")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "0.0009438", expectedResult: "0.00138424")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "9878.987", expectedResult: "14489.1809333333")
    }

    private func runMilesPerHourToMetersPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.metersPerSecond.fullName,
                        value: "1", expectedResult: "0.44704")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.metersPerSecond.fullName,
                        value: "18473.3992", expectedResult: "8258.348378368")
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.metersPerSecond.fullName,
                        value: "0.000023", expectedResult: "1.028192e-05")
    }

    private func runMilesPerHourToKilometersPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.kilometersPerHour.fullName,
                        value: "1", expectedResult: "1.609344")
        
    }

    private func runMilesPerHourToKnots(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.milesPerHour.fullName, Speed.knots.fullName,
                        value: "1", expectedResult: "0.8689762419")
        
    }

    private func runFeetPerSecondToMilesPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "0.493", expectedResult: "0.3361363636")
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "5280", expectedResult: "3600")
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "5.1", expectedResult: "3.4772727273")
    }
    
    private func runFeetPerSecondToMetersPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.metersPerSecond.fullName,
                        value: "1", expectedResult: "0.3048")
    }
    
    private func runFeetPerSecondToKilometersPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.kilometersPerHour.fullName,
                        value: "1", expectedResult: "1.09728")
    }
    
    private func runFeetPerSecondToKnots(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.feetPerSecond.fullName, Speed.knots.fullName,
                        value: "1", expectedResult: "0.5924838")
    }
  
    private func runMetersPerSecondToMilesPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.metersPerSecond.fullName, Speed.milesPerHour.fullName,
                        value: "1", expectedResult: "2.2369362921")
        
    }

    private func runMetersPerSecondToFeetPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.metersPerSecond.fullName, Speed.feetPerSecond.fullName,
                        value: "1", expectedResult: "3.2808399")
        
    }
    
    private func runMetersPerSecondToKilometersPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.metersPerSecond.fullName, Speed.kilometersPerHour.fullName,
                        value: "1", expectedResult: "3.6")
        
    }
    
    private func runMetersPerSecondToKnots(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.metersPerSecond.fullName, Speed.knots.fullName,
                        value: "1", expectedResult: "1.9438444924")
        
    }
    
    private func runKilometersPerHourToMilesPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.kilometersPerHour.fullName, Speed.milesPerHour.fullName,
                        value: "1", expectedResult: "0.6213711922")
        
    }
    
    private func runKilometersPerHourToFeetPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.kilometersPerHour.fullName, Speed.feetPerSecond.fullName,
                        value: "1", expectedResult: "0.9113444153")
        
    }
    
    private func runKilometersPerHourToMetersPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.kilometersPerHour.fullName, Speed.metersPerSecond.fullName,
                        value: "1", expectedResult: "0.2777777778")
        
    }
    
    private func runKilometersPerHourToKnots(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.kilometersPerHour.fullName, Speed.knots.fullName,
                        value: "1", expectedResult: "0.5399568")
        
    }
    
    private func runKnotsToMilesPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.knots.fullName, Speed.milesPerHour.fullName,
                        value: "1", expectedResult: "1.150779448")
        
    }
    
    private func runKnotsToFeetPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.knots.fullName, Speed.feetPerSecond.fullName,
                        value: "1", expectedResult: "1.6878098571")
        
    }
    
    private func runKnotsToMetersPerSecond(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.knots.fullName, Speed.metersPerSecond.fullName,
                        value: "1", expectedResult: "0.5144444444")
        
    }
    
    private func runKnotsToKilometersPerHour(){
        TestUtils.converterAssert(UnitType.speed.name, Speed.knots.fullName, Speed.kilometersPerHour.fullName,
                        value: "1", expectedResult: "1.852")
        
    }
}
