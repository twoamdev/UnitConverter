//
//  MeasurementSwapView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 1/3/23.
//

import SwiftUI

struct MeasurementSwapView: View {
    
    @State var valueAChanged : Bool = false
    @State var valueBChanged : Bool = false
    
    @Binding var units : [UnitGroup]
    @Binding var unitTypeIndex : Int
    @Binding var valueIndexA : Int
    @Binding var valueIndexB : Int
    @Binding var userInput : String
    @Binding var userResult : String
    @Binding var viewIsActive : Bool
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                VStack{
                    List{
                        
                        ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){  i in
                            let unitGroup = units[unitTypeIndex]
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(i == valueIndexA ? AppColor.colorA : .white)
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.black, lineWidth: 1)
                                    
                                }
                                .frame(width: 40, height: 40, alignment: .leading)
                                .padding(0)
                                
                                
                                Text(unitGroup.unitMemberFullName(index: i))
                                    .font(Font.custom("Roboto-Regular", size: 26))
                                Spacer()
                                
                            }
                            .onTapGesture {
                                if valueIndexA != i{
                                    valueAChanged = true
                                }
                                valueIndexA = i
                                if valueAChanged && valueBChanged {
                                    userResult = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: userInput)
                                    viewIsActive.toggle()
                                }
                                
                                 
                            }
                            .listRowSeparator(.hidden)
                            .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                        }
                    
                        
                    }
                    .listStyle(.plain)
                }
                Divider()
                    
                VStack{
                    List{
                        
                        ForEach(0..<units[unitTypeIndex].getMemberCount(), id: \.self){  i in
                            let unitGroup = units[unitTypeIndex]
                            HStack{
                                Spacer()
                                Text(unitGroup.unitMemberFullName(index: i))
                                    .font(Font.custom("Roboto-Regular", size: 26))
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(i == valueIndexB ? AppColor.colorB : .white)
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color.black, lineWidth: 1)
                                    
                                }
                                .frame(width: 40, height: 40, alignment: .leading)
                                .padding(0)
                                
                                
                                
                                
                                
                            }
                            .onTapGesture {
                                
                                if valueIndexB != i{
                                    valueBChanged = true
                                }
                                valueIndexB = i
                                if valueAChanged && valueBChanged {
                                    userResult = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: userInput)
                                    viewIsActive.toggle()
                                }
                                 
                            }
                            .listRowSeparator(.hidden)
                            .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                        }
                    
                        
                    }
                    .listStyle(.plain)
                    
                }
            }
            
            
            
            
            
            VStack{
                HStack{
                    Spacer()
                        Button(action: {
                            
                            userResult = Converter.convertAtoB(units: units[unitTypeIndex].getUnitType() ,unitTypeA: units[unitTypeIndex].unitMemberFullName(index: valueIndexA), unitTypeB: units[unitTypeIndex].unitMemberFullName(index: valueIndexB), valueA: userInput)
                            viewIsActive.toggle()
                        }, label: {
                            Buttons().cancel
                                .padding()
                        })
                }
                Spacer()
            }
        }
    }


}

