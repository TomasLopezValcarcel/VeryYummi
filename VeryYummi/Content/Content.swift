//
//  Content.swift
//  Yummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 23/01/2024.
//

import Foundation

enum FoodCategories: String, CaseIterable {
    case freshFood = "Fresh Food"
    case bakery = "Bakery"
    case frozen = "Frozen"
    case treatsSnacks = "Treats & Snacks"
    case foodCupboard = "Food Cupboard"
    case drinks = "Drinks"
    
}

enum Unitss: String, CaseIterable {
    case grams = "grams"
    case kg = "kg"
    case litres = "litres"
    case ml = "ml"
    case units = "units"
    
}

struct Ingredient: Identifiable {
    let id: UUID = UUID()
    let name: String
    var quantity: Int
    let unit: Unitss
    let category: FoodCategories
    let expdate: String
    
    
    func displayIngredientsInfo() -> String {
        return("""
        Name: \(name)
        Quantity: \(quantity) \(unit)
        Category: \(category.rawValue)
        Expiry date: \(expdate)
        """)
    }
    

}
    

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let name: String
    let ingredients: [Ingredient]
    let isFavourite: Bool
    let rating: Int
    
    #if DEBUG
    static var examples: [Recipe] {
        [Recipe(name: "Beans on toast", ingredients:
                    [Ingredient(name: "Beans", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025"),
                     Ingredient(name: "Toast", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025")],
                isFavourite: true,
                rating: 4),
         Recipe(name: "Bagel w/ cream cheese", ingredients:
                     [Ingredient(name: "Bagel", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025"),
                      Ingredient(name: "Cream cheese", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025")],
                 isFavourite: false,
                 rating: 4),
         Recipe(name: "Ice cream float", ingredients:
                     [Ingredient(name: "Ice", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025"),
                      Ingredient(name: "Cream", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025"),
                      Ingredient(name: "Float", quantity: 1, unit: .grams, category: .drinks, expdate: "01/01/2025")],
                 isFavourite: true,
                 rating: 4)
         ]
    }

    #endif
}



    

