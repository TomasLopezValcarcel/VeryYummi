//
//  Content.swift
//  Yummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 23/01/2024.
//

import Foundation

enum FoodCategories: String {
    case freshFood = "Fresh Food"
    case bakery = "Bakery"
    case frozen = "Frozen"
    case treatsSnacks = "Treats & Snacks"
    case foodCupboard = "Food Cupboard"
    case drinks = "Drinks"
    case babyToddler = "Baby & Toddler"
    case healthBeauty = "Health & Beauty"
    case pets = "Pets"
    case household = "Household"
    
}

struct Ingredient {
    let name: String
    var quantity: Int
    let unit: String
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
    
struct Kitchen {
    var ingredients = [Ingredient(name: "Heinz Baked Beans in Tomato Sauce", quantity: 32, unit: "cans", category: .foodCupboard, expdate: "31/12/2037"),
                       Ingredient(name: "New York Bakery Plain Bagels", quantity: 5, unit: "bagels", category: .bakery, expdate: "04/02/2024"),
                       Ingredient(name: "Giant Kitchen Roll", quantity: 1, unit: "roll", category: .household, expdate: "N/A"),
                       Ingredient(name: "Malibu Original 1L", quantity: 4, unit: "bottles", category: .drinks, expdate: "31/12/2028"),
                       Ingredient(name: "Beef & Vegetable Dog Food", quantity: 3, unit: "kilos", category: .pets, expdate: "31/09/2026"),
                       Ingredient(name: "Ben & Jerry's Ice Cream", quantity: 2, unit: "tubs", category: .foodCupboard, expdate: "16/04/2025")]
}
    

