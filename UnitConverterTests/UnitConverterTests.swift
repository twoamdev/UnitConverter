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

    func testSpeedConverter() throws {
        let tests = SpeedConverterTests()
        tests.run()
    }
    
    func testTimeConverter() throws {
        let tests = TimeConverterTests()
        tests.run()
    }
    
    func testVolumeConverter() throws {
        let tests = VolumeConverterTests()
        tests.run()
    }
    
    func testMassConverter() throws {
        let tests = MassConverterTests ()
        tests.run()
    }
    
    func testEnergyConverter() throws {
        let tests = EnergyConverterTests ()
        tests.run()
        
    }
    
    func testFrequencyConverter() throws {
        let tests = FrequencyConverterTests ()
        tests.run()
    }
    
    func testAreaConverter() throws {
        let tests = AreaConverterTests ()
        tests.run()
    }
    
    func testPressureConverter() throws {
        let tests = PressureConverterTests ()
        tests.run()
    }


    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
