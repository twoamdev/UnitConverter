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
    @State var unitTypeIndex : Int
    @State var valueIndexA : Int
    @State var valueIndexB : Int
    @State var unitValueA : String
    @State var unitValueB : String
    
    @State private var showUnitSwitcher : Bool = false
    @State private var inputA : String = ""
    @State private var inputB : String = ""
    
    
    func swapUnitALabel(_ unitLabelName : String){
        unitValueA = unitLabelName
    }
    
    func swapUnitBLabel(_ unitLabelName : String){
        unitValueB = unitLabelName
    }
    
    func updateUnitValueLabels(){
        //until predetermined implementaion is complete, just default to 0 and 1
        unitValueA = units[unitTypeIndex].unitMemberFullName(index: 0)
        unitValueB = units[unitTypeIndex].unitMemberFullName(index: 1)
        valueIndexA = 0
        valueIndexB = 1
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
                }.sheet(isPresented: $showUnitSwitcher, onDismiss: {
                    updateUnitValueLabels()
                }) {
                    UnitSwitcherView(units: $units,
                                     unitTypeIndex: $unitTypeIndex,
                                     userInput: $inputA,
                                     viewIsActive: $showUnitSwitcher
                    )
                        
                }
            }
        }
    }
    
    var topUnitSelectionButtons: some View{
        ScrollView(.horizontal){
            VStack{
                let gridItem = GridItem(.fixed(40))
                let rows = [gridItem, gridItem, gridItem]
                
                LazyHGrid(rows: rows){
                    ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){ i in
                        let unitGroup = units[unitTypeIndex]
                        Button(action: {
                            self.valueIndexA = i
                            self.swapUnitALabel(unitGroup.unitMemberFullName(index: i))
                        },label: {
                            Text(unitGroup.unitMemberAbbreviation(index: i))
                                .foregroundColor(self.valueIndexA == i ? Color.red : Color.blue)
                        })
                            .onChange(of: self.valueIndexA, perform: { _ in
                                inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: inputA)
                            })
                    }
                    .buttonStyle(.bordered)
                    .font(Font.custom("SourceCodePro-Regular", size: 18))
                    .padding()
                }
            }
        }

    }
    
    var inputAndResultFields: some View{
        VStack{
            VStack{
                HStack{
                    Spacer()
                    Text(unitValueA)
                        .font(Font.custom("SourceCodePro-Regular", size: 12))
                }
            
                NumberFieldView(name: $unitValueA, input: $inputA, charLimit: 18)
                    .textFieldStyle(.roundedBorder)
                    .onChange(of: inputA, perform: { _ in
                        inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: inputA)
                    })
            }
            .padding(.horizontal)
            
            VStack{
                NumberFieldView(name: $unitValueB, input: $inputB, charLimit: 25)
                    .textFieldStyle(.roundedBorder)
                    .disabled(true)
                HStack{
                    Spacer()
                    Text(unitValueB)
                        .font(Font.custom("SourceCodePro-Regular", size: 12))
                }
            }
            .padding(.horizontal)
        }
    }
    
    var bottomUnitSelectionButtons: some View{
        ScrollView(.horizontal){
            VStack{
            let gridItem = GridItem(.fixed(40))
            let rows = [gridItem, gridItem, gridItem]
            
            LazyHGrid(rows: rows){
                
                ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){ i in
                    let unit = units[unitTypeIndex]
                    Button(action: {
                        self.valueIndexB = i
                        self.swapUnitBLabel(unit.unitMemberFullName(index: i))
                    },label: {
                        Text(unit.unitMemberAbbreviation(index: i))
                            .foregroundColor(self.valueIndexB == i ? Color.red : Color.blue)
                    })
                        .onChange(of: self.valueIndexB, perform: { _ in
                            inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: unitValueA, unitTypeB: unitValueB, valueA: inputA)
                        })
                }
                .buttonStyle(.bordered)
                .font(Font.custom("SourceCodePro-Regular", size: 18))
                .padding()
            }
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
