//
//  NumberFieldView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/18/22.
//

import SwiftUI

struct NumberFieldView: View {
    @State private var valueA: String = ""
    var body: some View {
        TextField("Number A", text: $valueA)
            .font(Font.custom("Manrope-ExtraBold", size: 20))
            //.keyboardType(.decimalPad)
            
    }
}

struct NumberFieldView_Previews: PreviewProvider {
    static var previews: some View {
        NumberFieldView()
    }
}
