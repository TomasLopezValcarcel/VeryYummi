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
        Toggle("Show Recipes", isOn: $isShowingRecipesView)
            .padding(.horizontal)
        if isShowingRecipesView{
            RecipesView()
        }
        else{
            IngredientsView()
        }
    }

            
}



#Preview {
    ContentView()
}
