//
//  Buttons.swift
//  UnitConverter
//
//  Created by Ben Nelson on 1/2/23.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
        }
    }
    
    var cancel: some View{
        VStack{
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
            Image(systemName: "xmark")
                .font(.system(size: 25, weight: .regular))
                .foregroundColor(.black)
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
            }
            .frame(width: 50, height: 50, alignment: .leading)
            .shadow(radius: 10)
        }
    }
}


