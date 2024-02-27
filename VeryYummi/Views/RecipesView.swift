//
//  RecipesView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    
    let recipes = Recipe.examples
    
    var body: some View {
        List{
            ForEach(recipes) { recipe in
                HStack {
                    Text(recipe.name)
                    Text("\(recipe.isFavourite ? "Favourite" : "")")
                }
            }
        }
    }
}





#Preview {
    RecipesView()
}
