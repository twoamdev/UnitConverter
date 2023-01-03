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
        if !splashRunning {
            
            ZStack{
                Color.white
                VStack{
                    unitsTitle
                    Spacer()
                    //topUnitSelectionButtons
                   // inputAndResultFields
                    //bottomUnitSelectionButtons
                    Spacer()
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
