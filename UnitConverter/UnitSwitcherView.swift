//
//  UnitSwitcherView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/22/22.
//

import SwiftUI

struct UnitSwitcherView: View {
    
    @Binding var unitTypeIndex : Int
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<Units.allCases.count, id: \.self){ i in
                    let unit = Units.allCases[i]
                    HStack{
                        Text(unit.type)
                            .font(Font.custom("SourceCodePro-Regular", size: 22))
                        Spacer()
                        Image(systemName: i == unitTypeIndex ? "circle.fill" : "circle")
                            .fixedSize()
                    }
                    .onTapGesture {
                        unitTypeIndex = i
                    }
                }
            }
            
            
        }
        Spacer()
    }
}
