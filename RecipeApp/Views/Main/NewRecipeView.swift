//
//  NewRecipeView.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView{
            Button("Add recipe manually"){
                showAddRecipe = true
                
            }
                .navigationTitle("Add New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipe()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
