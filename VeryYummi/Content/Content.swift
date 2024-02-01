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
    



    

