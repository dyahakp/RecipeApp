//
//  SettingView.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Setting")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
