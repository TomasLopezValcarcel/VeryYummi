//
//  RecipeDetailView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 27/02/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe

    var body: some View {
        NavigationStack{
            VStack{
                Text("Rating: \(recipe.rating)/5")
                    .font(.headline)
                HStack {
                    ForEach(1..<6) { number in
                        if number <= recipe.rating {
                            Text("X")
                        }
                        else {
                            Text("O")
                        }
                    }
                }
                Text("Ingredients:")
                ForEach(recipe.ingredients) { ingredient in
                    List{
                        Text("\(ingredient.name)")
                            .font(.headline)
                        Text("Quantity: \(ingredient.quantity)")
                    }
                }
            }
            .navigationTitle(recipe.name)
        }
    }
}

#Preview {
    RecipeDetailView(recipe: Recipe.examples[0])
}
