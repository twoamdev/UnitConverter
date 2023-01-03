//
//  Buttons.swift
//  UnitConverter
//
//  Created by Ben Nelson on 1/2/23.
//

import SwiftUI

struct Buttons: View {
    
    @State private var digit: String

    init(_ numpadDigit: String ) {
        self.digit = numpadDigit
    }
    
    init(){
        self.digit = ""
    }
    
    
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
    
    var numpadDigit: some View{
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(.white)
                if(self.digit == "del"){
                    Image(systemName: "delete.left")
                        .font(.system(size: 26, weight: .medium))
                        .foregroundColor(.black)
                }
                else{
                    Text(self.digit)
                        .font(Font.custom("Roboto-Medium", size: 26))
                        .foregroundColor(.black)
                }
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black, lineWidth: 1)
            }
            .frame(width: 105, height: 50)
        }
    }
}


