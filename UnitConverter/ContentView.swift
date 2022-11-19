//
//  ContentView.swift
//  UnitConverter
//
//  Created by Ben Nelson on 11/10/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var inputA = ""
    
    var body: some View {
        NumberFieldView()
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
