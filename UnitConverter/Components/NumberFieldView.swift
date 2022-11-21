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
    @State private var prevInput : String = ""
    
    var body: some View {
        TextField(name, text: $input)
            .keyboardType(.decimalPad)
            .onChange(of: input, perform: { newInput in
                /*
                let maxDigitLength = "30"
                let maxDecimalLength = "20"
                
                let regEx = "^[0-9]{0,\(maxDigitLength)}(\\.[0-9]{0,\(maxDecimalLength)})?$"
                let pred = NSPredicate(format:"SELF MATCHES %@", regEx)
                let isValidInput = newInput == "." ? false : pred.evaluate(with: newInput)
                 */
                let characterLimit = 18
                let isValidInput = newInput.count <= characterLimit ? true : false
                
                input = !isValidInput ? prevInput : newInput
                prevInput = input
            })
    }
}
