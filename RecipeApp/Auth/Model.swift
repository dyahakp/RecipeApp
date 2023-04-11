//
//  Model.swift
//  RecipeApp
//
//  Created by Macbook Pro on 09/04/23.
//

import Foundation
import SwiftUI

//4 buat model
struct UserLogin : Codable, Identifiable {
    var id = UUID()
    let success: Bool
    let user: String
   
}

