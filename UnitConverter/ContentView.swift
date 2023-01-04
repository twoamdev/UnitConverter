//
//  ContentView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var splashRunning : Bool = true
    @State private var mainScreenOpacity : Double = 0.0
    @State private var splashScreenOpacity : Double = 1.0
    
    @State var units : [UnitGroup]
    @State var unitTypeIndex : Int
    @State var valueIndexA : Int
    @State var valueIndexB : Int
    @State var unitValueA : String
    @State var unitValueB : String
    
    @State private var showUnitSwitcher : Bool = false
    @State private var showMeasurementSwitcher : Bool = false
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
    
    func updateInputValue(_ keystroke : String){
        if keystroke == "del"{
            inputA = String(inputA.dropLast())
        }
        else{
            inputA = inputA + keystroke
        }
        inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: inputA)
    }
    

    var body: some View {
        if !splashRunning {
            
            ZStack{
                Color.white
                VStack{
                    unitsTitle
                    Spacer()
                    inputSection
                    outputSection
                    Spacer()
                    numpad
                        .padding()
                }
            }
            .onTapGesture {self.hideKeyboard()}
             
            
            
        }
        else{
            splashScreen
                .onAppear(perform: {
                    // Delay of 3.5 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        self.splashRunning = false
                    }
                })
        }
    }
    
    var splashScreen: some View{
        VStack{
            Text("unit")
            Text("convert")
        }
        .opacity(self.splashScreenOpacity)
    }
    
    var unitsTitle: some View{
        VStack{
            HStack{
                Button(action: {
                    self.showUnitSwitcher.toggle()
                }) {
                    HStack{
                        Text(units[unitTypeIndex].getUnitType())
                            .font(Font.custom("Roboto-Bold", size: 30))
                            .foregroundColor(.black)
                        
                    Image(systemName: "arrow.down.square")
                        .font(.system(size: 30, weight: .thin))
                        .foregroundColor(.black)
                    }
                }.sheet(isPresented: $showUnitSwitcher, onDismiss: {
                    updateUnitValueLabels()
                }) {
                    UnitSwitcherView(units: $units,
                                     unitTypeIndex: $unitTypeIndex,
                                     userInput: $inputA,
                                     viewIsActive: $showUnitSwitcher
                    )
                        
                }
                .padding(.leading)
                Spacer()
            }
        }
        .padding(.top)
        .padding(.top)
        .padding(.top)
    }
    
    var inputSection : some View{
        HStack{
            
            UnitDisplayView(color: AppColor.colorA, input: $inputA, units: $units, unitTypeIndex: $unitTypeIndex, valueIndex: $valueIndexA)

            Button(action: {
                self.showMeasurementSwitcher.toggle()
            }) {
                Buttons(image: "slider.horizontal.3").options
            }.sheet(isPresented: $showMeasurementSwitcher,
                    onDismiss: {
                inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: inputA)
            }) {
                MeasurementSwapView(units: $units, unitTypeIndex: $unitTypeIndex, valueIndexA: $valueIndexA, valueIndexB: $valueIndexB, userInput: $inputA, userResult: $inputB, viewIsActive: $showMeasurementSwitcher)
            }
        }
    }
    
    var outputSection : some View{
        HStack{
            
            UnitDisplayView(color: AppColor.colorB, input: $inputB, units: $units, unitTypeIndex: $unitTypeIndex, valueIndex: $valueIndexB)
            Button(action: {}, label: {Buttons(image: "arrow.left.arrow.right").options})
        }
    }
    
    var numpad: some View{
        VStack{
            HStack{
                Button(action: {updateInputValue("1")}, label: {Buttons(numpadDigit: "1").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("2")}, label: {Buttons(numpadDigit: "2").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("3")}, label: {Buttons(numpadDigit: "3").numpadDigit})
            }
            HStack{
                Button(action: {updateInputValue("4")}, label: {Buttons(numpadDigit: "4").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("5")}, label: {Buttons(numpadDigit: "5").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("6")}, label: {Buttons(numpadDigit: "6").numpadDigit})
            }
            HStack{
                Button(action: {updateInputValue("7")}, label: {Buttons(numpadDigit: "7").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("8")}, label: {Buttons(numpadDigit: "8").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("9")}, label: {Buttons(numpadDigit: "9").numpadDigit})
            }
            HStack{
                Button(action: {updateInputValue(".")}, label: {Buttons(numpadDigit: ".").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("0")}, label: {Buttons(numpadDigit: "0").numpadDigit})
                Spacer()
                Button(action: {updateInputValue("del")}, label: {Buttons(numpadDigit: "del").numpadDigit})
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
