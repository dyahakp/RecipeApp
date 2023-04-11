//
//  RecipeAppApp.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

@main
struct RecipeAppApp: App {
    @StateObject var recipeViewModel = RecipeViewModels()
    
    var body: some Scene {
 
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
