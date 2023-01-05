//
//  UnitSwitcherView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/22/22.
//

import SwiftUI

struct UnitSwitcherView: View {
    
    @Binding var units : [UnitGroup]
    @Binding var unitTypeIndex : Int
    @Binding var userInput : String
    @Binding var userResult : String
    @Binding var viewIsActive : Bool
    
    var body: some View {
        ZStack{
            VStack{
                List{
                    ForEach(0..<units.count, id: \.self){ i in
                        let unit = units[i].getUnitType()
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(i == unitTypeIndex ? AppColor.colorA : .white)
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 1)
                                
                            }
                            .frame(width: 40, height: 40, alignment: .leading)
                            .padding(0)
                            
                            
                            Text(unit)
                                .font(Font.custom("Roboto-Regular", size: 26))
                            Spacer()
                            
                        }
                        .onTapGesture {
                            if unitTypeIndex != i{
                                userInput = "0"
                                userResult = "0"
                                viewIsActive.toggle()
                            }
                            unitTypeIndex = i
                        }
                        .listRowSeparator(.hidden)
                        .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                    }
                }
                .listStyle(.plain)
            }
            VStack{
                HStack{
                    Spacer()
                        Button(action: {
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
