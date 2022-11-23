//
//  ContentView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var showUnitSwitcher : Bool = false
    @State private var unitTypeIndex : Int = 0
    @State private var selectIndexA : Int = 4
    @State private var selectIndexB : Int = 7
    @State private var unitA : String = Length.allCases[4].fullName
    @State private var unitB : String = Length.allCases[7].fullName
    @State private var inputA : String = ""
    @State private var inputB : String = ""
    
    
    func swapUnitALabel(_ unitLabelName : String){
        unitA = unitLabelName
    }
    
    func swapUnitBLabel(_ unitLabelName : String){
        unitB = unitLabelName
    }

    var body: some View {
        ZStack{
            Color.white
            VStack{
                Spacer()
                unitsTitle
                Spacer()
                topUnitSelectionButtons
                inputAndResultFields
                bottomUnitSelectionButtons
                Spacer()
            }
        }
        .onTapGesture {self.hideKeyboard()}
    }
    
    var unitsTitle: some View{
        VStack{
            HStack{
                Text(Units.allCases[unitTypeIndex].type)
                    .font(Font.custom("SourceCodePro-Regular", size: 22))
                
                Button(action: {
                    self.showUnitSwitcher.toggle()
                }) {
                    Image(systemName: "gearshape.circle.fill")
                        .font(Font.system(.largeTitle))
                }.sheet(isPresented: $showUnitSwitcher) {
                    UnitSwitcherView(unitTypeIndex: $unitTypeIndex)
                }
            }
        }
    }
    
    var topUnitSelectionButtons: some View{
        VStack{
            let columns = [GridItem(.adaptive(minimum: 80))]
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
                            inputB = Converter.convertAtoB(units: Units.allCases[unitTypeIndex].type ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
                        })
                }
                .buttonStyle(.bordered)
                .font(Font.custom("SourceCodePro-Regular", size: 18))
            }
        }
    }
    
    var inputAndResultFields: some View{
        VStack{
            VStack{
                HStack{
                    Spacer()
                    Text(unitA)
                        .font(Font.custom("SourceCodePro-Regular", size: 12))
                }
                NumberFieldView(name: $unitA, input: $inputA, charLimit: 18)
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: inputA, perform: { _ in
                        inputB = Converter.convertAtoB(units: Units.allCases[unitTypeIndex].type ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
                    })
            }
            .padding(.horizontal)
            
            VStack{
                NumberFieldView(name: $unitB, input: $inputB, charLimit: 25)
                    .textFieldStyle(.roundedBorder)
                    .disabled(true)
                HStack{
                    Spacer()
                    Text(unitB)
                        .font(Font.custom("SourceCodePro-Regular", size: 12))
                }
            }
            .padding(.horizontal)
        }
    }
    
    var bottomUnitSelectionButtons: some View{
        VStack{
            let columns = [GridItem(.adaptive(minimum: 80))]
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
                            inputB = Converter.convertAtoB(units: Units.allCases[unitTypeIndex].type ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
                        })
                }
                .buttonStyle(.bordered)
                .font(Font.custom("SourceCodePro-Regular", size: 18))
                
            }
        }
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
