////
////  HomeViewControllercopy.swift
////  RecipeApp
////
////  Created by Macbook Pro on 04/04/23.
////
//
////import SwiftUI
////
////
////
////struct HomeView: View {
////    @State private var searchText: String = ""
////    
////    private var searchResults: [Recipe] {
////        let results = Recipe.all
////      if searchText.isEmpty { return results }
////      return results.filter {
////        $0.name.lowercased().contains(searchText.lowercased()) || $0.category.contains(searchText)
////      }
////    }
////    private var suggestedResults: [Recipe] {
////      if searchText.isEmpty { return [] }
////      return searchResults
////    }
////    var body: some View {
////        
////        NavigationView {
////            ScrollView {
////                    List(searchResults) { recipe in
////                        NavigationLink(destination:  {
////                            RecipeList(recipes: Recipe.all)
////                            
////                        }) {
////                            Text ("\(recipe.image) \(recipe.name)")
////                                .padding(6)
////                        }
////                    
////                }
////             
////            }
////            .navigationTitle("Recipe Collection")
////            
////            .searchable(
////              text: $searchText,
////              placement: .navigationBarDrawer(displayMode: .always),
////              prompt: "Search for recipe"
////            ) {
////                ForEach(suggestedResults)  { recipe  in
////                  Text("Looking for \(recipe.name)?")
////                    .searchCompletion(recipe.name)
////                }
////              }
////            }
////    
////        .navigationViewStyle(.stack)
////    }
////}
////
////
////struct RecipeResult: View {
////
////  let recipeResult: Recipe
////
////  var body: some View {
////      RecipeList(recipes: Recipe.all)
////  }
////}
////
////
////
////struct HomeView_Previews: PreviewProvider {
////    static var previews: some View {
////        HomeView()
////    }
////}
//
//
//
//
////categories view
//
////
////  CategoriesView.swift
////  RecipeApp
////
////  Created by Macbook Pro on 29/03/23.
////
//
//import SwiftUI
//
//struct CategoriesView: View {
//    
//    @EnvironmentObject var recipesVM: RecipeViewModels
//    var category: Category
//    
//    
// 
//    
//    
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(Category.allCases){ category in
//                    NavigationLink{
//                          CategoryDetail(category: category)
//                    } label :{
//                        Text(category.rawValue + "s")
//                    }
//                }
//                }
//                .navigationTitle("Categories")
//            }
//            .navigationViewStyle(.stack)
//        }
//    
//}
//struct CategoriesView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoriesView()
//    }
//}
//
