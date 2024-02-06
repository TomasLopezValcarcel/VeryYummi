//
//  RecipesView.swift
//  VeryYummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        Text("Hello, World!")
        List{
            ForEach(Recipes) {recipe in
                HStack {
                    Text(Recipes.name)
                    Text(Recipes.isFavourite)
                }
            }
        }
    }
}





#Preview {
    RecipesView()
}
