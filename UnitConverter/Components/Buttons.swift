//
//  Buttons.swift
//  UnitConverter
//
//  Created by Ben Nelson on 1/2/23.
//

import SwiftUI

struct Buttons: View {
    
    @State private var digit: String
    @State private var image: String
    

    init(numpadDigit: String = "", image: String = "exclamationmark.triangle" ) {
        self.digit = numpadDigit
        self.image = image
    }
    
    init(){
        self.digit = ""
        self.image = "exclamationmark.triangle"
    }
    
    
    var body: some View {
        VStack{
        }
    }
    
    var cancel: some View{
        VStack{
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(.black)
            Image(systemName: "xmark")
                .font(.system(size: 25, weight: .regular))
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
            }
            .frame(width: 50, height: 50, alignment: .leading)
            //.shadow(radius: 10)
        }
    }
    
    var options: some View{
        VStack{
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                .fill(.white)
                Image(systemName: self.image)
                .font(.system(size: 25, weight: .medium))
                .foregroundColor(.black)
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
            }
            .frame(width: 70, height: 125, alignment: .leading)
            
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
                else if(self.digit == "clear"){
                    Image(systemName: "trash")
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
            .frame(width: 105, height: 40)
        }
    }
}


