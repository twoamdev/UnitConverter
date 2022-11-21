//
//  NumberFieldView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/18/22.
//

import SwiftUI

struct NumberFieldView: View {
    @Binding var name: String
    @Binding var input: String
    @State var charLimit : Int
    @State private var prevInput : String = ""
    
    var body: some View {
        VStack{
            TextField(name, text: $input)
                .font(Font.custom("SourceCodePro-Regular", size: 18))
                .keyboardType(.decimalPad)
                .onChange(of: input, perform: { newInput in
                    let isValidInput = newInput.count <= charLimit ? true : false
                    input = !isValidInput ? prevInput : newInput
                    prevInput = input
                })
        }
    }
}
