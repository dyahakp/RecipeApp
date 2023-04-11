//
//  CategoryDetail.swift
//  RecipeApp
//
//  Created by Macbook Pro on 02/04/23.
//

import SwiftUI

struct CategoryDetail: View {
    var category : Category
    @EnvironmentObject var recipesVM: RecipeViewModels
    //computed property
    var recipes: [Recipe]{
        return recipesVM.recipes.filter{$0.category == category.rawValue}
    }
    var body: some View {
        ScrollView{
            RecipeList(recipes: Recipe.all.filter{$0.category == category.rawValue})
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetail(category: Category.dessert)
            .environmentObject(RecipeViewModels())
    }
}
