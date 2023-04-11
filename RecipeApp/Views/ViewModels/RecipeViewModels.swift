//
//  RecipeViewModels.swift
//  RecipeApp
//
//  Created by Macbook Pro on 08/04/23.
//

import Foundation


class RecipeViewModels: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []

    init(){
        recipes = Recipe.all
    }
   
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
    
}
