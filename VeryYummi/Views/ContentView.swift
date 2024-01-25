//
//  ContentView.swift
//  Yummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {

    @State private var kitchen = Kitchen()
    @State private var selectedFood: Int = 0
    
    var body: some View{
        Form{
            VStack(alignment: .center, content: {
                Text("\(kitchen.ingredients[selectedFood].displayIngredientsInfo())")
            })
        }
    }
}



#Preview {
    ContentView()
}
