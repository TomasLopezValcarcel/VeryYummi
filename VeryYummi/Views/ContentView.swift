//
//  ContentView.swift
//  Yummi
//
//  Created by Lopez-Valcarcel, Tomas (CDNP) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    //view switching
    
    @State private var isShowingRecipesView: Bool = false
    
    //
    
    var body: some View{
        TabView{
            RecipesView()
                .tabItem{
                    Label("Recipes", systemImage: "bolt.fill")
                }
            IngredientsView()
                .tabItem{
                    Label("Ingredients", systemImage: "flame.fill")
                }
        }
    }

            
}



#Preview {
    ContentView()
}
