//
//  CategoriesView.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

struct CategoriesView: View {
    

    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases){ category in
                    NavigationLink{
                          CategoryDetail(category: category)
                    } label :{
                        Text(category.rawValue + "s")
                    }
                }
                }
                .navigationTitle("Categories")
            }
            .navigationViewStyle(.stack)
        }
    
}
struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
