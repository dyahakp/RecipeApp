//
//  AddRecipe.swift
//  RecipeApp
//
//  Created by Macbook Pro on 02/04/23.
//

import SwiftUI
struct AddRecipe: View {
    @State private var name: String = ""
    @State private var image: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    @EnvironmentObject var recipesVM: RecipeViewModels

    @Environment(\.dismiss) var dismiss
 
    var body: some View {
        NavigationStack {
            Form {
                Section("Fill the field below to add new recipes", content: {
                    TextField("Recipe Nama", text: $name)
                
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases){ category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    
                    TextField("Descriptions", text: $description, axis: .vertical)
                        .lineLimit(4, reservesSpace: true)
                        .multilineTextAlignment(.leading)
                    
                    TextField("Ingredients", text: $ingredients, axis: .vertical)
                        .lineLimit(6, reservesSpace: true)
                        .multilineTextAlignment(.leading)

                    TextField("Directions", text: $directions, axis: .vertical)
                        .lineLimit(8, reservesSpace: true)
                        .multilineTextAlignment(.leading)
                    
                    
                    TextField("Link Image Recipe", text: $image)
                    
                })
                    
            }
            
            
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }

                }
                

                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeDetail(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    } label : {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                      
                        
                    }
                    .disabled(name.isEmpty)
                }
                            
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle( .stack)
    }
}

extension AddRecipe {
    private func saveRecipe() {
    let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name : name, image: image, description: description, ingredients: ingredients, direction: directions, category: selectedCategory.rawValue, datePublished: datePublished, url:  "")
        
        recipesVM.addRecipe(recipe: recipe)
    }
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
            .environmentObject(RecipeViewModels())
    }
}

