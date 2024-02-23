//
//  IngredientsView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 22/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    @State private var selectedFood: Int = 0
    
    @State private var foodName = ""
    @State private var foodQty = 1
    @State private var foodUnit = ""
    @State private var foodCategory = ""
    @State private var foodExp = Date()
    
    @State var ingredients = [Ingredient(name: "Heinz Baked Beans in Tomato Sauce", quantity: 32, unit: .units, category: .foodCupboard, expdate: "31/12/2037"),
                              Ingredient(name: "New York Bakery Plain Bagels", quantity: 5, unit: .units, category: .bakery, expdate: "04/02/2024"),
                              Ingredient(name: "Malibu Original 1L", quantity: 4, unit: .litres, category: .drinks, expdate: "31/12/2028"),
                              Ingredient(name: "Ben & Jerry's Ice Cream", quantity: 2, unit: .kg, category: .foodCupboard, expdate: "16/04/2025")]
    
    var body: some View{
        Form {
            Section(content: {
                VStack(alignment: .center, content: {
                    Text("\(ingredients[selectedFood].displayIngredientsInfo())")
                })
            }, header: { Text("your ingedients")}
            )
            
            Section(content: {
                VStack(alignment: .center, content: {
                    HStack{
                        Text("Ingredient name:  ")
                        TextField("Ice Cream", text: $foodName)
                    }
                    Stepper("Quantity:  \(foodQty) \(foodUnit)", value: $foodQty, in: 1...99)
                    Picker("Unit:", selection: $foodUnit) {
                        ForEach(Unitss.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category.rawValue)
                        }
                    }
                    Picker("Category:", selection: $foodCategory) {
                        ForEach(FoodCategories.allCases, id: \.self) { category in
                            Text(category.rawValue).tag(category.rawValue)
                        }
                    }
                    DatePicker("Expiry date", selection: $foodExp, displayedComponents: .date)
                })
                Button(action: {
                    print("hello world")
//                    ingredients.append(Ingredient(name: foodName, quantity: foodQty, unit: foodUnit, category: foodCategory, expdate: foodExp))
                }, label: { Text("Add ingredient")})
            }, header: { Text("add a new ingredient")}
            )
        }
        
    }
}


#Preview {
    IngredientsView()
}



