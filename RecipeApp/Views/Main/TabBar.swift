//
//  TabBar.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
          
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            
            NewRecipeView()
                .tabItem{
                    Label("New", systemImage: "plus")
                }
            
            
            
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            
            
            
            SettingView()
                .tabItem{
                    Label("Setting", systemImage: "gear")
                }
            
                
            
        }
        .toolbar(.visible, for: .tabBar)
        .toolbarBackground(
            Color.white,
            for: .tabBar
        )

    
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipeViewModels())
    }
}
