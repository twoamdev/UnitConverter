//
//  VolumeConverterTests.swift
//  UnitConverterTests
//
//  Created by Ben Nelson on 12/24/22.
//

import XCTest
@testable import UnitConverter


struct VolumeConverterTests {
    
    /*
     USGallons, USQuarts, USPints, USCups, USLegalCups, USOunces, USTablespoons, USTeaspoons, liters, milliliters, cubicMeters, imperialGallons, imperialQuarts, imperialPints, imperialCups, imperialOunces,imperialTablespoons, imperialTeaspoons, cubicFeet, cubicInches
     */
    func run(){
        let usGallons = TestMap(UnitType.volume.name,
                            testUnit: TestUnit(Volume.USGallons.fullName, "1"),
                            compareUnits: [
                                TestUnit(Volume.USGallons.fullName, "1"),
                                TestUnit(Volume.USQuarts.fullName, "4"),
                                TestUnit(Volume.USPints.fullName, "8"),
                                TestUnit(Volume.USCups.fullName, "16"),
                                TestUnit(Volume.USLegalCups.fullName, "15.772549"),
                                TestUnit(Volume.USOunces.fullName, "128"),
                                TestUnit(Volume.USTablespoons.fullName, "256"),
                                TestUnit(Volume.USTeaspoons.fullName, "768"),
                                TestUnit(Volume.liters.fullName, "3.785412"),
                                TestUnit(Volume.milliliters.fullName, "3785.412096"),
                                TestUnit(Volume.cubicInches.fullName, "231"),
                                TestUnit(Volume.imperialGallons.fullName, "0.832674"),
                                TestUnit(Volume.imperialQuarts.fullName, "3.330696"),
                                TestUnit(Volume.imperialPints.fullName, "6.661391"),
                                TestUnit(Volume.imperialCups.fullName, "13.322782"),
                                TestUnit(Volume.imperialOunces.fullName, "133.227822"),
                                TestUnit(Volume.imperialTablespoons.fullName, "213.164516"),
                                TestUnit(Volume.imperialTeaspoons.fullName, "639.493547"),
                                TestUnit(Volume.cubicMeters.fullName, "0.003785"),
                                TestUnit(Volume.cubicFeet.fullName, "0.133681")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: usGallons)
        
        let milliliters = TestMap(UnitType.volume.name,
                            testUnit: TestUnit(Volume.milliliters.fullName, "1"),
                            compareUnits: [
                                TestUnit(Volume.USGallons.fullName, "0.000264"),
                                TestUnit(Volume.USQuarts.fullName, "0.001057"),
                                TestUnit(Volume.USPints.fullName, "0.002113"),
                                TestUnit(Volume.USCups.fullName, "0.004227"),
                                TestUnit(Volume.USLegalCups.fullName, "0.004167"),
                                TestUnit(Volume.USOunces.fullName, "0.033814"),
                                TestUnit(Volume.USTablespoons.fullName, "0.067628"),
                                TestUnit(Volume.USTeaspoons.fullName, "0.202884"),
                                TestUnit(Volume.liters.fullName, "0.001"),
                                TestUnit(Volume.milliliters.fullName, "1"),
                                TestUnit(Volume.cubicInches.fullName, "0.061024"),
                                TestUnit(Volume.imperialGallons.fullName, "0.00022"),
                                TestUnit(Volume.imperialQuarts.fullName, "0.00088"),
                                TestUnit(Volume.imperialPints.fullName, "0.00176"),
                                TestUnit(Volume.imperialCups.fullName, "0.00352"),
                                TestUnit(Volume.imperialOunces.fullName, "0.035195"),
                                TestUnit(Volume.imperialTablespoons.fullName, "0.056312"),
                                TestUnit(Volume.imperialTeaspoons.fullName, "0.168936"),
                                TestUnit(Volume.cubicMeters.fullName, "1e-6"),
                                TestUnit(Volume.cubicFeet.fullName, "3.5315e-5")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: milliliters)
        
        let cubicFeet = TestMap(UnitType.volume.name,
                            testUnit: TestUnit(Volume.cubicFeet.fullName, "1"),
                            compareUnits: [
                                TestUnit(Volume.USGallons.fullName, "7.480522"),
                                TestUnit(Volume.USQuarts.fullName, "29.9221"),
                                TestUnit(Volume.USPints.fullName, "59.8442"),
                                TestUnit(Volume.USCups.fullName, "119.688"),
                                TestUnit(Volume.USLegalCups.fullName, "117.987"),
                                TestUnit(Volume.USOunces.fullName, "957.506834"),
                                TestUnit(Volume.USTablespoons.fullName, "1915.013668"),
                                TestUnit(Volume.USTeaspoons.fullName, "5745.041003"),
                                TestUnit(Volume.liters.fullName, "28.3168"),
                                TestUnit(Volume.milliliters.fullName, "28316.858989"),
                                TestUnit(Volume.cubicInches.fullName, "1728"),
                                TestUnit(Volume.imperialGallons.fullName, "6.22884"),
                                TestUnit(Volume.imperialQuarts.fullName, "24.9153"),
                                TestUnit(Volume.imperialPints.fullName, "49.8307"),
                                TestUnit(Volume.imperialCups.fullName, "99.6614"),
                                TestUnit(Volume.imperialOunces.fullName, "996.614"),
                                TestUnit(Volume.imperialTablespoons.fullName, "1594.58"),
                                TestUnit(Volume.imperialTeaspoons.fullName, "4783.74"),
                                TestUnit(Volume.cubicMeters.fullName, "0.028317"),
                                TestUnit(Volume.cubicFeet.fullName, "1")
                            ])
        TestUtils.convertMulitpleAssertions(mapping: cubicFeet)
    }
    
}
