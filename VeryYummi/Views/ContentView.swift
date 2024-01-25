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
    
    @State private var foodName = ""
    @State private var foodQty = 0
    @State private var foodUnit = ""
    @State private var foodCategory = ""
    @State private var foodExp = Date()
    
        


    var body: some View{
        Form{
            Section{
                VStack(alignment: .center, content: {
                    Text("\(kitchen.ingredients[selectedFood].displayIngredientsInfo())")
                })
            }
            Section{
                VStack(alignment: .center, content: {
                    Text("Add a new ingredient").bold()
                    TextField("Food name", text: $foodName)
                    TextField("Quantity", value: $foodQty, formatter: NumberFormatter())
                    TextField("Unit", text: $foodUnit)
                    TextField("Category", text: $foodCategory)
//                    Picker("Category", selection: $foodCategory)
                    DatePicker("Expiry date", selection: $foodExp, displayedComponents: .date)
                })
            }
        }
    }
}



#Preview {
    ContentView()
}
