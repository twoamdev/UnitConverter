//
//  UnitConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/14/22.
//

import XCTest
@testable import UnitConverter

class UnitConverterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFeetToMeters() throws {
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "9019929929292", expectedResult: "2749274642448.2017")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "839.928383", expectedResult: "256.0101711384")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "1.23", expectedResult: "0.374904")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "1", expectedResult: "0.3048")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "0.0054", expectedResult: "0.00164592")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "0.000332", expectedResult: "0.0001011936")
        converterAssert(UnitType.length.name, Length.feet.fullName, Length.meters.fullName,
                        value: "0.000328", expectedResult: "9.99744e-05")
    }
    
    func testMetersToMiles() throws {
        converterAssert(UnitType.length.name, Length.meters.fullName, Length.miles.fullName,
                        value: "984739920.3329", expectedResult: "611889.018341")
        converterAssert(UnitType.length.name, Length.meters.fullName, Length.miles.fullName,
                        value: "0.0221", expectedResult: "1.373230334844508e-05")
    }
    
    func testFahrenheitToKelvin() throws {
        converterAssert(UnitType.temperature.name, Temperature.fahrenheit.fullName, Temperature.kelvin.fullName,
                        value: "39.4095", expectedResult: "277.2663888889")
        converterAssert(UnitType.temperature.name, Temperature.fahrenheit.fullName, Temperature.kelvin.fullName,
                        value: "-1002.394", expectedResult: "-301.5133333333")
    }
    
    
    func converterAssert(_ unitType : String, _ unitA : String , _ unitB : String, value : String, expectedResult : String){
        let result = Converter.convertAtoB(units: unitType, unitTypeA: unitA, unitTypeB: unitB, valueA: value)
        XCTAssert( result == expectedResult, "\(unitA) to \(unitB) -- \(value) \(unitA) should be \(expectedResult) \(unitB), but returned \(result) \(unitB).")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}