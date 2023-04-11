//
//  HomeView.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

//import SwiftUI
//
//struct HomeView: View {
//    @State private var searchText: String = ""
//
//    private var searchResults: [Recipe] {
//        let results = Recipe.all
//        if searchText.isEmpty { return results }
//        return results.filter {
//            $0.name.lowercased().contains(searchText.lowercased()) || $0.category.contains(searchText)
//        }
//    }
//    private var suggestedResults: [Recipe] {
//        if searchText.isEmpty { return [] }
//        return searchResults
//    }
//    var body: some View {
//
//        NavigationView {
//            ScrollView {
//                List(searchResults) { recipe in
//                    NavigationLink(destination:  {
//                        RecipeResultView(recipeResult: recipe)
//                    }) {
//                        Text ("\(recipe.image) \(recipe.name)")
//                            .padding(6)
//                    }
//
//                }
//
//            }
//            .navigationTitle("Recipe Collection")
//
//            .searchable(
//                text: $searchText,
//                placement: .navigationBarDrawer(displayMode: .always),
//                prompt: "Search for recipe"
//            ) {
//                ForEach(suggestedResults)  { recipe  in
//                    Text("Looking for \(recipe.name)?")
//                        .searchCompletion(recipe.name)
//                }
//            }
//        }
//
//        .navigationViewStyle(.stack)
//    }
//}
//
//
//struct RecipeResultView: View {
//
//    let recipeResult: Recipe
//    var body: some View {
//      RecipeList(recipes: recipeResult)
//    }
//}
//
//
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
//
import SwiftUI

//newest
//struct HomeView: View {
//    @State private var searchText: String = ""
//   @EnvironmentObject var recipesVM: RecipeViewModels
//    var body: some View {
//        NavigationView {
//            ScrollView {
//                RecipeList(recipes: recipesVM.recipes)
//            }
//            .navigationTitle("Recipe Collection")
//
//            .searchable(
//              text: $searchText,
//              placement: .navigationBarDrawer(displayMode: .always),
//              prompt: "Search for recipe"
//            )
//            }
//
//        .navigationViewStyle(.stack)
//    }
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//            .environmentObject(RecipeViewModels())
//
//    }
//}
//
struct HomeView: View {
    @State private var searchText: String = ""
    @EnvironmentObject var recipesVM: RecipeViewModels
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(Category.allCases, id: \.self) { category in
                                NavigationLink(destination: CategoryDetail(category: category)) {
                                    Text(category.rawValue.capitalized + "s")
                                        .frame(width: 90, height: 40)
                                        .foregroundColor(.white)
                                        .background(Color.red)
                                        .cornerRadius(10)
                                        .padding(2)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    RecipeList(recipes: recipesVM.recipes)
                }
                .navigationTitle("Recipe Collection")
                .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always)) {
                    Text("Search for recipe")
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModels())
    }
}
