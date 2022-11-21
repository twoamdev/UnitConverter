//
//  ContentView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var selectedUnitType = Units.allCases[0].type
    @State private var unitA : String = Length.allCases[0].fullName
    @State private var unitB : String = Length.allCases[2].fullName
    @State private var inputA : String = ""
    @State private var inputB : String = ""
    @State private var selectIndexA : Int = 0
    @State private var selectIndexB : Int = 2
    
    func swapUnitALabel(_ unitLabelName : String){
        unitA = unitLabelName
    }
    
    func swapUnitBLabel(_ unitLabelName : String){
        unitB = unitLabelName
    }
  
    
    var body: some View {
        VStack{
            Text(selectedUnitType)
                .font(Font.custom("SourceCodePro-Regular", size: 22))
        }
        let columns = [
                GridItem(.adaptive(minimum: 80))
            ]
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(0..<Length.allCases.count, id: \.self){ i in
                let unitType = Length.allCases[i]
                Button(action: {
                    self.selectIndexA = i
                    self.swapUnitALabel(unitType.fullName)
                },label: {
                    Text(unitType.abbreviation)
                        .foregroundColor(self.selectIndexA == i ? Color.red : Color.blue)
                })
                    .onChange(of: self.selectIndexA, perform: { _ in
                        inputB = Converter.convertAtoB(units: selectedUnitType ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
                    })
            }
            .buttonStyle(.bordered)
            .font(Font.custom("SourceCodePro-Regular", size: 18))
        }
        
        
        NumberFieldView(name: $unitA, input: $inputA)
            .font(Font.custom("SourceCodePro-Regular", size: 18))
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            .onChange(of: inputA, perform: { _ in
                inputB = Converter.convertAtoB(units: selectedUnitType ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
            })
        
        NumberFieldView(name: $unitB, input: $inputB)
            .font(Font.custom("SourceCodePro-Regular", size: 18))
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            .disabled(true)
            
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(0..<Length.allCases.count, id: \.self){ i in
                let unitType = Length.allCases[i]
                Button(action: {
                    self.selectIndexB = i
                    self.swapUnitBLabel(unitType.fullName)
                },label: {
                    Text(unitType.abbreviation)
                        .foregroundColor(self.selectIndexB == i ? Color.red : Color.blue)
                })
                    .onChange(of: self.selectIndexB, perform: { _ in
                        inputB = Converter.convertAtoB(units: selectedUnitType ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
                    })
            }
            .buttonStyle(.bordered)
            .font(Font.custom("SourceCodePro-Regular", size: 18))
            
        }
        
            
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
