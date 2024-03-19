//
//  IngredientsViewModel.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 29/02/2024.
//

import Foundation


@Observable
class IngredientsViewModel {
    
    static let shared = IngredientsViewModel()
    
    var selectedFood: Int = 0
    
    var foodName = ""
    var foodQty = 1
    var foodUnit = ""
    var foodCategory = ""
    var foodExp = Date()
    
    var ingredients = [Ingredient(name: "Heinz Baked Beans in Tomato Sauce", quantity: 32, unit: .units, category: .foodCupboard, expdate: "31/12/2037"),
                       Ingredient(name: "New York Bakery Plain Bagels", quantity: 5, unit: .units, category: .bakery, expdate: "04/02/2024"),
                       Ingredient(name: "Malibu Original 1L", quantity: 4, unit: .litres, category: .drinks, expdate: "31/12/2028"),
                       Ingredient(name: "Ben & Jerry's Ice Cream", quantity: 2, unit: .kg, category: .foodCupboard, expdate: "16/04/2025")]
    
    
    var newIngredientName: String
    
    func addNewIngredient(){
        print("hello world")
        
        private init() {
            
        }
    }
}



	

//
//class IngredientsViewModel: ObservableObject {
//    @Published var selectedFood: Int = 0
//    
//    @Published var foodName = ""
//    @Published var foodQty = 1
//    @Published var foodUnit = ""
//    @Published var foodCategory = ""
//    @Published var foodExp = Date()
//    
//    @Published var ingredients = [Ingredient(name: "Heinz Baked Beans in Tomato Sauce", quantity: 32, unit: .units, category: .foodCupboard, expdate: "31/12/2037"),
//                              Ingredient(name: "New York Bakery Plain Bagels", quantity: 5, unit: .units, category: .bakery, expdate: "04/02/2024"),
//                              Ingredient(name: "Malibu Original 1L", quantity: 4, unit: .litres, category: .drinks, expdate: "31/12/2028"),
//                              Ingredient(name: "Ben & Jerry's Ice Cream", quantity: 2, unit: .kg, category: .foodCupboard, expdate: "16/04/2025")]
//    
//    func addNewIngredient(){
//        print("hello world")
//        
//
////                    ingredients.append(Ingredient(name: foodName, quantity: foodQty, unit: foodUnit, category: foodCategory, expdate: foodExp))
//        //resetscreen by resetting vars
//        //name = ""
//        // qty = 1
//        // exp = Date.now
//    }
//    
//}
