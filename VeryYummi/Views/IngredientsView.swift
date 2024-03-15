//
//  IngredientsView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 22/02/2024.
//

import SwiftUI

struct IngredientsView: View {
   
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    
    @State private var showSheet = false
    
    var body: some View{
        Form {
            Section(content: {
                VStack(alignment: .center, content: {
                    Text("\(ingredientsViewModel.ingredients[ingredientsViewModel.selectedFood].displayIngredientsInfo())")
                })
                VStack{
                    Button(action: {
                        showSheet.toggle()
                    }, label: { Text("Add an ingredient")})
                }
            }, header: { Text("your ingedients")}
            )
            
            .sheet(isPresented: $showSheet){
                Form {
                    Section(content: {
                        VStack(alignment: .center, content: {
                            HStack{
                                Text("Ingredient name:  ")
                                TextField("Ice Cream", text: $ingredientsViewModel.foodName)
                            }
                            Stepper("Quantity:  \(ingredientsViewModel.foodQty) \(ingredientsViewModel.foodUnit)", value: $ingredientsViewModel.foodQty, in: 1...99)
                            Picker("Unit:", selection: $ingredientsViewModel.foodUnit) {
                                ForEach(Unitss.allCases, id: \.self) { category in
                                    Text(category.rawValue).tag(category.rawValue)
                                }
                            }
                            Picker("Category:", selection: $ingredientsViewModel.foodCategory) {
                                ForEach(FoodCategories.allCases, id: \.self) { category in
                                    Text(category.rawValue).tag(category.rawValue)
                                }
                            }
                            DatePicker("Expiry date", selection: $ingredientsViewModel.foodExp, displayedComponents: .date)
                        })
                        Button(action: {
                            ingredientsViewModel.addNewIngredient()
                            showSheet.toggle()
                        }, label: { Text("Add ingredient")})
                    }, header: { Text("\nadd a new ingredient")}
                    )
                } //endform
            } //endsheet
        }
        
    }
}


#Preview {
    IngredientsView()
}


//
