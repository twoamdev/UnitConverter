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
    @State private var splashScale : CGFloat = 1.0
    
    @State var units : [UnitGroup]
    @State var unitTypeIndex : Int
    @State var valueIndexA : Int
    @State var valueIndexB : Int
    @State var unitValueA : String
    @State var unitValueB : String
    
    @State private var showUnitSwitcher : Bool = false
    @State private var showMeasurementSwitcher : Bool = false
    @State private var inputA : String = "0"
    @State private var inputB : String = "0"
    
    
    
    func swapUnitALabel(_ unitLabelName : String){
        unitValueA = unitLabelName
    }
    
    func swapUnitBLabel(_ unitLabelName : String){
        unitValueB = unitLabelName
    }
    
    func swap(){
        updateUnitValueLabels(valueIndexB,valueIndexA)
        let oldInputA = inputA
        inputA = inputB == "---" ? "0" : inputB
        inputB = oldInputA
        updateInputValue()
    }
    
    func updateUnitValueLabels(_ index0 : Int = 0, _ index1 : Int = 1){
        //until predetermined implementaion is complete, just default to 0 and 1
        unitValueA = units[unitTypeIndex].unitMemberFullName(index: index0)
        unitValueB = units[unitTypeIndex].unitMemberFullName(index: index1)
        valueIndexA = index0
        valueIndexB = index1
    }
    
    func copyToClipboard(_ value : String){
        UIPasteboard.general.string = value
    }
    
    func updateInputValue(_ keystroke : String = ""){
        if keystroke == "del"{
            inputA = String(inputA.dropLast())
        }
        else if keystroke == "clear"{
            inputA = "0"
        }
        else if keystroke == "+"{
            inputA = inputA.contains("-") ? String(inputA.dropFirst()) : String("-" + inputA)
        }
        else if inputA == "0" && keystroke != "."{
            inputA = keystroke
        }
        else if inputA.contains(".") && keystroke == "."{
            inputA = inputA
        }
        else{
            inputA = inputA + keystroke
        }
        
        inputA = inputA == "-" ? "0" : inputA
        inputA = inputA == "" ? "0" : inputA
        inputB = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: inputA)
        inputB = inputB == "" ? "---" : inputB
    }
    

    var body: some View {
        if self.splashScale <= 0.0 {
            VStack{
                unitsTitle
                Spacer()
                inputSection
                outputSection
                Spacer()
                numpad
                    .padding()
                    .padding(.bottom)
            }
        }
        else{
            splashScreen
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation(.easeOut(duration: 5.0)){
                            self.splashRunning = false
                            self.splashScale = 0.0
                        }
                    }
                })
                
                
        }
    }
    
    var splashScreen: some View{
        VStack{
            Text("unit")
                .font(Font.custom("Roboto-Bold", size: 30))
            Text("swap")
                .font(Font.custom("Roboto-Bold", size: 30))
        }
        .scaleEffect(self.splashScale)
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
                            .font(.system(size: 26, weight: .light))
                            .foregroundColor(.black)
                        
                    }
                }.sheet(isPresented: $showUnitSwitcher, onDismiss: {
                    updateUnitValueLabels()
                }) {
                    UnitSwitcherView(units: $units,
                                     unitTypeIndex: $unitTypeIndex,
                                     userInput: $inputA,
                                     userResult: $inputB,
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
            Button(action: {self.copyToClipboard(inputA)}, label: {
                UnitDisplayView(color: AppColor.colorA, input: $inputA, units: $units, unitTypeIndex: $unitTypeIndex, valueIndex: $valueIndexA)
                
            })
                .buttonStyle(.plain)
            

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
            Button(action: {self.copyToClipboard(inputB)}, label:{
            UnitDisplayView(color: AppColor.colorB, input: $inputB, units: $units, unitTypeIndex: $unitTypeIndex, valueIndex: $valueIndexB)
            })
                .buttonStyle(.plain)
                   
            
            Button(action: {self.swap()}, label: {Buttons(image: "arrow.left.arrow.right").options})
        }
    }
    
    var numpad: some View{
        VStack{
            HStack{
                Spacer()
                Button(action: {updateInputValue("e")}, label: {Buttons(numpadDigit: "e").numpadDigit})
                Button(action: {updateInputValue("+")}, label: {Buttons(numpadDigit: "+/-").numpadDigit})
                Button(action: {updateInputValue("clear")}, label: {Buttons(numpadDigit: "clear").numpadDigit})
                Spacer()
            }
            HStack{
                Spacer()
                Button(action: {updateInputValue("1")}, label: {Buttons(numpadDigit: "1").numpadDigit})
                Button(action: {updateInputValue("2")}, label: {Buttons(numpadDigit: "2").numpadDigit})
                Button(action: {updateInputValue("3")}, label: {Buttons(numpadDigit: "3").numpadDigit})
                Spacer()
            }
            HStack{
                Spacer()
                Button(action: {updateInputValue("4")}, label: {Buttons(numpadDigit: "4").numpadDigit})
                Button(action: {updateInputValue("5")}, label: {Buttons(numpadDigit: "5").numpadDigit})
                Button(action: {updateInputValue("6")}, label: {Buttons(numpadDigit: "6").numpadDigit})
                Spacer()
            }
            HStack{
                Spacer()
                Button(action: {updateInputValue("7")}, label: {Buttons(numpadDigit: "7").numpadDigit})
                Button(action: {updateInputValue("8")}, label: {Buttons(numpadDigit: "8").numpadDigit})
                Button(action: {updateInputValue("9")}, label: {Buttons(numpadDigit: "9").numpadDigit})
                Spacer()
            }
            HStack{
                Spacer()
                Button(action: {updateInputValue(".")}, label: {Buttons(numpadDigit: ".").numpadDigit})
                Button(action: {updateInputValue("0")}, label: {Buttons(numpadDigit: "0").numpadDigit})
                Button(action: {updateInputValue("del")}, label: {Buttons(numpadDigit: "del").numpadDigit})
                Spacer()
            }
        }
    }
    
  
}


/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}*/
