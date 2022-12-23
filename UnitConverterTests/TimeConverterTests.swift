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
        runNanosecondsToAllOtherTypes()
        runMicrosecondsToAllOtherTypes()
        runMillisecondsToAllOtherTypes()
        runSecondsToAllOtherTypes()
        runMinutesToAllOtherTypes()
        runHoursToAllOtherTypes()
        runDaysToAllOtherTypes()
        runWeeksToAllOtherTypes()
        runMonthsToAllOtherTypes()
        runYearsToAllOtherTypes()
        runDecadesToAllOtherTypes()
        
    }
    private func runNanosecondsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "0.001")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "1e-6")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "1e-9")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "1.6667e-11")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "2.7778e-13")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.days.fullName,
                        value: "1", expectedResult: "1.1574e-14")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "1.6534e-15")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.months.fullName,
                        value: "1", expectedResult: "3.8052e-16")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.years.fullName,
                        value: "1", expectedResult: "3.171e-17")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "3.171e-18")
        TestUtils.converterAssert(UnitType.time.name, Time.nanoseconds.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "3.171e-19")
    }
    
    private func runMicrosecondsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "1000")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "0.001")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "1e-6")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "1.6667e-8")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "2.7778e-10")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.days.fullName,
                        value: "1", expectedResult: "1.1574e-11")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "1.6534e-12")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.months.fullName,
                        value: "1", expectedResult: "3.8052e-13")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.years.fullName,
                        value: "1", expectedResult: "3.171e-14")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "3.171e-15")
        TestUtils.converterAssert(UnitType.time.name, Time.microseconds.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "3.171e-16")
    }
    
    private func runMillisecondsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "1000000")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "1000")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "0.001")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "1.6667e-5")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "2.7778e-7")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.days.fullName,
                        value: "1", expectedResult: "1.1574e-8")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "1.6534e-9")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.months.fullName,
                        value: "1", expectedResult: "3.8052e-10")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.years.fullName,
                        value: "1", expectedResult: "3.171e-11")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "3.171e-12")
        TestUtils.converterAssert(UnitType.time.name, Time.milliseconds.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "3.171e-13")
    }
    
    private func runSecondsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "1e+9")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "1000000")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "1000")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "0.016667")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "0.000278")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.days.fullName,
                        value: "1", expectedResult: "1.1574e-5")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "1.6534e-6")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.months.fullName,
                        value: "1", expectedResult: "3.8052e-7")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.years.fullName,
                        value: "1", expectedResult: "3.171e-8")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "3.171e-9")
        TestUtils.converterAssert(UnitType.time.name, Time.seconds.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "3.171e-10")
    }
    
    private func runMinutesToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "6e+10")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "6e+7")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "60000")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "60")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "0.016667")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.days.fullName,
                        value: "1", expectedResult: "0.000694")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "9.9206e-5")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.months.fullName,
                        value: "1", expectedResult: "2.2831e-5")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.years.fullName,
                        value: "1", expectedResult: "1.9026e-6")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "1.9026e-7")
        TestUtils.converterAssert(UnitType.time.name, Time.minutes.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "1.9026e-8")
    }
    
    private func runHoursToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "3.6e+12")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "3.6e+9")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "3600000")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "3600")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "60")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.days.fullName,
                        value: "1", expectedResult: "0.041667")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "0.005952")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.months.fullName,
                        value: "1", expectedResult: "0.00137")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.years.fullName,
                        value: "1", expectedResult: "0.000114")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "1.1416e-5")
        TestUtils.converterAssert(UnitType.time.name, Time.hours.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "1.1416e-6")
        
    }
    
    private func runDaysToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "8.64e+13")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "8.64e+10")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "8.64e+7")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "86400")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "1440")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "24")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.days.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "0.142857")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.months.fullName,
                        value: "1", expectedResult: "0.032877")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.years.fullName,
                        value: "1", expectedResult: "0.00274")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "0.000274")
        TestUtils.converterAssert(UnitType.time.name, Time.days.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "2.7397e-5")
        
    }
    
    private func runWeeksToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "6.048e+14")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "6.048e+11")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "6.048e+8")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "604800")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "10080")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "168")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.days.fullName,
                        value: "1", expectedResult: "7")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.months.fullName,
                        value: "1", expectedResult: "0.230137")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.years.fullName,
                        value: "1", expectedResult: "0.019178")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "0.001918")
        TestUtils.converterAssert(UnitType.time.name, Time.weeks.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "0.000192")
        
    }
    
    private func runMonthsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "2.628e+15")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "2.628e+12")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "2.628e+9")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "2628001.152")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "43800.0192")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "730.00032")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.days.fullName,
                        value: "1", expectedResult: "30.41668")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "4.34524")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.months.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.years.fullName,
                        value: "1", expectedResult: "0.083333")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "0.008333")
        TestUtils.converterAssert(UnitType.time.name, Time.months.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "0.000833")
        
    }
    
    private func runYearsToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "3.1536e+16")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "3.1536e+13")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "3.1536e+10")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "3.1536e+7")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "525600.2304")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "8760.00384")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.days.fullName,
                        value: "1", expectedResult: "365.00016")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "52.14288")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.months.fullName,
                        value: "1", expectedResult: "12")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.years.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "0.1")
        TestUtils.converterAssert(UnitType.time.name, Time.years.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "0.01")
        
    }
    
    private func runDecadesToAllOtherTypes(){
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.nanoseconds.fullName,
                        value: "1", expectedResult: "3.1536e+17")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.microseconds.fullName,
                        value: "1", expectedResult: "3.1536e+14")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.milliseconds.fullName,
                        value: "1", expectedResult: "3.1536e+11")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.seconds.fullName,
                        value: "1", expectedResult: "3.1536e+8")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.minutes.fullName,
                        value: "1", expectedResult: "5256002.304")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.hours.fullName,
                        value: "1", expectedResult: "87600.0384")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.days.fullName,
                        value: "1", expectedResult: "3650.0016")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.weeks.fullName,
                        value: "1", expectedResult: "521.4288")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.months.fullName,
                        value: "1", expectedResult: "120")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.years.fullName,
                        value: "1", expectedResult: "10")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.decades.fullName,
                        value: "1", expectedResult: "1")
        TestUtils.converterAssert(UnitType.time.name, Time.decades.fullName, Time.centuries.fullName,
                        value: "1", expectedResult: "0.1")
        
    }
    
    
}
