//
//  ContentView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var units : [UnitGroup]
    @State private var showUnitSwitcher : Bool = false
    @State private var unitTypeIndex : Int = 0
    @State private var selectIndexA : Int = 4
    @State private var selectIndexB : Int = 7
    
    @State private var unitA : String = ""
    @State private var unitB : String = ""
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
                Text(units[unitTypeIndex].getUnitType())
                    .font(Font.custom("SourceCodePro-Regular", size: 22))
                
                Button(action: {
                    self.showUnitSwitcher.toggle()
                }) {
                    Image(systemName: "gearshape.circle.fill")
                        .font(Font.system(.largeTitle))
                }.sheet(isPresented: $showUnitSwitcher) {
                    UnitSwitcherView(units: $units, unitTypeIndex: $unitTypeIndex, userInput: $inputA)
                }
            }
        }
    }
    
    var topUnitSelectionButtons: some View{
        VStack{
            let columns = [GridItem(.adaptive(minimum: 80))]
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){ i in
                    let unitGroup = units[unitTypeIndex]
                    Button(action: {
                        self.selectIndexA = i
                        self.swapUnitALabel(unitGroup.unitMemberFullName(index: i))
                    },label: {
                        Text(unitGroup.unitMemberAbbreviation(index: i))
                            .foregroundColor(self.selectIndexA == i ? Color.red : Color.blue)
                    })
                        .onChange(of: self.selectIndexA, perform: { _ in
                            inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: selectIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: selectIndexB), valueA: inputA)
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
                        inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: selectIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: selectIndexB), valueA: inputA)
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
                
                ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){ i in
                    let unit = units[unitTypeIndex]
                    Button(action: {
                        self.selectIndexB = i
                        self.swapUnitBLabel(unit.unitMemberFullName(index: i))
                    },label: {
                        Text(unit.unitMemberAbbreviation(index: i))
                            .foregroundColor(self.selectIndexB == i ? Color.red : Color.blue)
                    })
                        .onChange(of: self.selectIndexB, perform: { _ in
                            inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: unitA, unitTypeB: unitB, valueA: inputA)
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
