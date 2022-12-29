//
//  DigitalStorageConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/28/22.
//

import XCTest
@testable import UnitConverter


struct DigitalStorageConverterTests {
    func run(){
        let bits = TestMap(UnitType.digitalStorage.name,
                            testUnit: TestUnit(DigitalStorage.bits.fullName, "4.392"),
                            compareUnits: [
                                TestUnit(DigitalStorage.bits.fullName, "4.392"),
                                TestUnit(DigitalStorage.kibibits.fullName, "0.0042890625"),
                                TestUnit(DigitalStorage.mebibits.fullName, "4.188538e-6"),
                                TestUnit(DigitalStorage.gibibits.fullName, "4.090369e-9"),
                                TestUnit(DigitalStorage.tebibits.fullName, "3.994501e-12"),
                                TestUnit(DigitalStorage.pebibits.fullName, "3.90088e-15"),
                                
                                TestUnit(DigitalStorage.kilobits.fullName, "0.004392"),
                                TestUnit(DigitalStorage.megabits.fullName, "4.392e-6"),
                                TestUnit(DigitalStorage.gigabits.fullName, "4.392e-9"),
                                TestUnit(DigitalStorage.terabits.fullName, "4.392e-12"),
                                TestUnit(DigitalStorage.petabits.fullName, "4.392e-15"),
                                
                                TestUnit(DigitalStorage.bytes.fullName, "0.549"),
                                TestUnit(DigitalStorage.kibibytes.fullName, "0.00053613281"),
                                TestUnit(DigitalStorage.mebibytes.fullName, "5.235672e-7"),
                                TestUnit(DigitalStorage.gibibytes.fullName, "5.112961e-10"),
                                TestUnit(DigitalStorage.tebibytes.fullName, "4.993126e-13"),
                                TestUnit(DigitalStorage.pebibytes.fullName, "4.8761e-16"),
                                
                                TestUnit(DigitalStorage.kilobytes.fullName, "0.000549"),
                                TestUnit(DigitalStorage.megabytes.fullName, "5.49e-7"),
                                TestUnit(DigitalStorage.gigabytes.fullName, "5.49e-10"),
                                TestUnit(DigitalStorage.terabytes.fullName, "5.49e-13"),
                                TestUnit(DigitalStorage.petabytes.fullName, "5.49e-16"),

                            ])
        TestUtils.convertMulitpleAssertions(mapping: bits)

    }
    
}




