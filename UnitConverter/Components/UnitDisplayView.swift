//
//  UnitDisplayView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 1/3/23.
//

import SwiftUI

struct UnitDisplayView: View {
    
    @State var color : Color
    @Binding var input : String
    @Binding var units : [UnitGroup]
    @Binding var unitTypeIndex : Int
    @Binding var valueIndex : Int
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                        .fill(self.color)
                VStack{
                    Spacer(minLength: 1)
                    HStack{
                        Text(self.input)
                            .font(Font.custom("Roboto-Bold", size: 40))
                            .padding(.leading)
                            .padding(.top)
                        Spacer()
                    }
                    Spacer(minLength: 1)
                    HStack{
                        Text(units[unitTypeIndex].unitMemberFullName(index: valueIndex))
                            .font(Font.custom("Roboto-Thin", size: 35))
                            .padding(.leading)
                            .padding(.bottom)
                        Spacer()
                    }
                    Spacer(minLength: 1)
                }
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black, lineWidth: 1)
            }
            .frame(width: 265, height: 120, alignment: .leading)
            
        }
    }
}
