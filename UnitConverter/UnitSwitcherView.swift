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
    @Binding var viewIsActive : Bool
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<units.count, id: \.self){ i in
                    let unit = units[i].getUnitType()
                    HStack{
                        Text(unit)
                            .font(Font.custom("SourceCodePro-Regular", size: 22))
                        Spacer()
                        Image(systemName: i == unitTypeIndex ? "circle.fill" : "circle")
                            .fixedSize()
                    }
                    .onTapGesture {
                        if unitTypeIndex != i{
                            userInput = ""
                            viewIsActive.toggle()
                        }
                        unitTypeIndex = i
                    }
                }
            }
            
            
        }
        Spacer()
    }
}
