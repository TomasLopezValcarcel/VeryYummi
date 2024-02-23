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

struct Ingredient {
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
    

struct Recipes: Identifiable {
    let id: UUID = UUID()
    let name: String
    let ingredients: String
    let isFavourite: Bool
    let rating: Int
    
    #if DEBUG
    static var example: [Recipes] {
        [Recipes(name: "Beans on toast", ingredients: "Beans", isFavourite: true, rating: 4),
        Recipes(name: "Bagel w/ cream cheese", ingredients: "Bagel", isFavourite: false, rating: 5),
        Recipes(name: "Ice cream float", ingredients: "Ice cream", isFavourite: true, rating: 4)]
    }

    #endif
}



    

