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
    @State private var foodQty = 1
    @State private var foodUnit = ""
    @State private var foodCategory = ""
    @State private var foodExp = Date()
    
        


    var body: some View{
        Form {
            Section{
                VStack(alignment: .center, content: {
                    Text("\(kitchen.ingredients[selectedFood].displayIngredientsInfo())")
                })
            }
            Section{
                VStack(alignment: .center, content: {
                    Text("Add a new ingredient").bold()
                    HStack{
                        Text("Food name:  ")
                        TextField("Ice Cream", text: $foodName)
                    }
                    Stepper("Quantity:   \(foodQty) \(foodUnit)", value: $foodQty, in: 1...99)
                    HStack{
                        Text("Unit:  ")
                        TextField("Tubs", text: $foodUnit)
                    }
                    Picker("Category:", selection: $foodCategory) {
                        ForEach(FoodCategories.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category.rawValue)
                        }
                    }
                    DatePicker("Expiry date", selection: $foodExp, displayedComponents: .date)
                })
            }
        }
    }
}



#Preview {
    ContentView()
}
