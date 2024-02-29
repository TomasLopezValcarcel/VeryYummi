//
//  RecipesView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    
    @StateObject var recipesViewModel: RecipesViewModel = RecipesViewModel()
    
    
    var body: some View {
        List{
            ForEach(recipesViewModel.recipes) { recipe in
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
