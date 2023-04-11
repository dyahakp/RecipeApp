//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import Foundation
enum Category : String, CaseIterable, Identifiable {
    var id : String{self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}
struct Recipe: Identifiable {
    //identifiable karena setiap resep bersifat unik, maka untuk menjadi unik pakai UUID
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients : String
    let direction: String
    let category : Category.RawValue //custom type
    //RawValue artinya yang dibaca stringnya bukan casenya
    let datePublished : String
    let url : String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name : "Vegan Palacinky (Czech Sweet Crepes)",
            image : "https://www.forksoverknives.com/wp-content/uploads/fly-images/127211/spicy-tomato-sushi-rolls-wordpress-1366x566-c.jpg",
            description : "This famous Czech dessert is traditionally made with eggs, milk, and oil, but our vegan, oil-free version is packed full of delicious flavors that will satisfy your cravings without the unhealthy ingredients. The secret to pillow-soft vegan crepes? Sparkling water! This key addition makes the batter extra fluffy so each bite is light and delicate. The thin pancakes are filled with fresh fruit or fruit compote while they cook to create a gooey, sweet center that tastes even more decadent with a drizzle of maple syrup. Perfect for brunch or an after-dinner treat, these vegan crepes are a guaranteed hit for kids and adults alike.",
            ingredients : "¾ cup whole wheat flour\n2 tablespoons brown rice flour\n1½ cup sparkling water\n¼ cup unsweetened, unflavored plant-based milk\n1 tablespoon date syrup or pure maple syrup, plus more for serving\nPinch sea salt\n1 cup thinly sliced strawberries\n1 cup fresh blueberries",
            direction : "1. In a blender combine the first six ingredients (through salt). Cover and blend until smooth.\n2. Heat a nonstick crepe pan over medium. Ladle ¼ cup batter in middle of the pan; use the back of the ladle to spread batter into a 6-inch crepe. Cook 2 to 3 minutes or until crepe easily releases from pan (no need to flip it).\n2. While crepe is still in the pan, place a few strawberry slices and some blueberries on one side of crepe. Roll crepe over the fruit and continue rolling to the other side. Remove from pan. Repeat with remaining batter and fruit.\n3. Lightly drizzle crepes with additional syrup. Serve immediately.",
            category : "Breakfast",
            datePublished : "2023-03-29",
            url : "https://www.forksoverknives.com/recipes/vegan-breakfast/vegan-palacinky-czech-sweet-crepes/"
        ),
        Recipe(
            name : "Banana Split",
            image : "https://www.forksoverknives.com/wp-content/uploads/fly-images/127211/spicy-tomato-sushi-rolls-wordpress-1366x566-c.jpg",
            description : "This famous Czech dessert is traditionally made with eggs, milk, and oil, but our vegan, oil-free version is packed full of delicious flavors that will satisfy your cravings without the unhealthy ingredients. The secret to pillow-soft vegan crepes? Sparkling water! This key addition makes the batter extra fluffy so each bite is light and delicate. The thin pancakes are filled with fresh fruit or fruit compote while they cook to create a gooey, sweet center that tastes even more decadent with a drizzle of maple syrup. Perfect for brunch or an after-dinner treat, these vegan crepes are a guaranteed hit for kids and adults alike.",
            ingredients : "¾ cup whole wheat flour\n2 tablespoons brown rice flour\n1½ cup sparkling water\n¼ cup unsweetened, unflavored plant-based milk\n1 tablespoon date syrup or pure maple syrup, plus more for serving\nPinch sea salt\n1 cup thinly sliced strawberries\n1 cup fresh blueberries",
            direction : "1. In a blender combine the first six ingredients (through salt). Cover and blend until smooth.\n2. Heat a nonstick crepe pan over medium. Ladle ¼ cup batter in middle of the pan; use the back of the ladle to spread batter into a 6-inch crepe. Cook 2 to 3 minutes or until crepe easily releases from pan (no need to flip it).\n2. While crepe is still in the pan, place a few strawberry slices and some blueberries on one side of crepe. Roll crepe over the fruit and continue rolling to the other side. Remove from pan. Repeat with remaining batter and fruit.\n3. Lightly drizzle crepes with additional syrup. Serve immediately.",
            category : "Breakfast",
            datePublished : "2023-03-29",
            url : "https://www.forksoverknives.com/recipes/vegan-breakfast/vegan-palacinky-czech-sweet-crepes/"
        ),
        Recipe(
            name : "Sushi Sushi",
            image : "https://www.forksoverknives.com/wp-content/uploads/fly-images/127211/spicy-tomato-sushi-rolls-wordpress-1366x566-c.jpg",
            description : "This famous Czech dessert is traditionally made with eggs, milk, and oil, but our vegan, oil-free version is packed full of delicious flavors that will satisfy your cravings without the unhealthy ingredients. The secret to pillow-soft vegan crepes? Sparkling water! This key addition makes the batter extra fluffy so each bite is light and delicate. The thin pancakes are filled with fresh fruit or fruit compote while they cook to create a gooey, sweet center that tastes even more decadent with a drizzle of maple syrup. Perfect for brunch or an after-dinner treat, these vegan crepes are a guaranteed hit for kids and adults alike.",
            ingredients : "¾ cup whole wheat flour\n2 tablespoons brown rice flour\n1½ cup sparkling water\n¼ cup unsweetened, unflavored plant-based milk\n1 tablespoon date syrup or pure maple syrup, plus more for serving\nPinch sea salt\n1 cup thinly sliced strawberries\n1 cup fresh blueberries",
            direction : "1. In a blender combine the first six ingredients (through salt). Cover and blend until smooth.\n2. Heat a nonstick crepe pan over medium. Ladle ¼ cup batter in middle of the pan; use the back of the ladle to spread batter into a 6-inch crepe. Cook 2 to 3 minutes or until crepe easily releases from pan (no need to flip it).\n2. While crepe is still in the pan, place a few strawberry slices and some blueberries on one side of crepe. Roll crepe over the fruit and continue rolling to the other side. Remove from pan. Repeat with remaining batter and fruit.\n3. Lightly drizzle crepes with additional syrup. Serve immediately.",
            category : "Soup",
            datePublished : "2023-03-29",
            url : "https://www.forksoverknives.com/recipes/vegan-breakfast/vegan-palacinky-czech-sweet-crepes/"
        ),
        Recipe(
            name : "Ramen",
            image : "https://www.forksoverknives.com/wp-content/uploads/fly-images/127211/spicy-tomato-sushi-rolls-wordpress-1366x566-c.jpg",
            description : "This famous Czech dessert is traditionally made with eggs, milk, and oil, but our vegan, oil-free version is packed full of delicious flavors that will satisfy your cravings without the unhealthy ingredients. The secret to pillow-soft vegan crepes? Sparkling water! This key addition makes the batter extra fluffy so each bite is light and delicate. The thin pancakes are filled with fresh fruit or fruit compote while they cook to create a gooey, sweet center that tastes even more decadent with a drizzle of maple syrup. Perfect for brunch or an after-dinner treat, these vegan crepes are a guaranteed hit for kids and adults alike.",
            ingredients : "¾ cup whole wheat flour\n2 tablespoons brown rice flour\n1½ cup sparkling water\n¼ cup unsweetened, unflavored plant-based milk\n1 tablespoon date syrup or pure maple syrup, plus more for serving\nPinch sea salt\n1 cup thinly sliced strawberries\n1 cup fresh blueberries",
            direction : "1. In a blender combine the first six ingredients (through salt). Cover and blend until smooth.\n2. Heat a nonstick crepe pan over medium. Ladle ¼ cup batter in middle of the pan; use the back of the ladle to spread batter into a 6-inch crepe. Cook 2 to 3 minutes or until crepe easily releases from pan (no need to flip it).\n2. While crepe is still in the pan, place a few strawberry slices and some blueberries on one side of crepe. Roll crepe over the fruit and continue rolling to the other side. Remove from pan. Repeat with remaining batter and fruit.\n3. Lightly drizzle crepes with additional syrup. Serve immediately.",
            category : "Breakfast",
            datePublished : "2023-03-29",
            url : "https://www.forksoverknives.com/recipes/vegan-breakfast/vegan-palacinky-czech-sweet-crepes/"
        ),
        Recipe(
            name : "Takoyaki Cheese",
            image : "https://www.forksoverknives.com/wp-content/uploads/fly-images/127211/spicy-tomato-sushi-rolls-wordpress-1366x566-c.jpg",
            description : "This famous Czech dessert is traditionally made with eggs, milk, and oil, but our vegan, oil-free version is packed full of delicious flavors that will satisfy your cravings without the unhealthy ingredients. The secret to pillow-soft vegan crepes? Sparkling water! This key addition makes the batter extra fluffy so each bite is light and delicate. The thin pancakes are filled with fresh fruit or fruit compote while they cook to create a gooey, sweet center that tastes even more decadent with a drizzle of maple syrup. Perfect for brunch or an after-dinner treat, these vegan crepes are a guaranteed hit for kids and adults alike.",
            ingredients : "¾ cup whole wheat flour\n2 tablespoons brown rice flour\n1½ cup sparkling water\n¼ cup unsweetened, unflavored plant-based milk\n1 tablespoon date syrup or pure maple syrup, plus more for serving\nPinch sea salt\n1 cup thinly sliced strawberries\n1 cup fresh blueberries",
            direction : "1. In a blender combine the first six ingredients (through salt). Cover and blend until smooth.\n2. Heat a nonstick crepe pan over medium. Ladle ¼ cup batter in middle of the pan; use the back of the ladle to spread batter into a 6-inch crepe. Cook 2 to 3 minutes or until crepe easily releases from pan (no need to flip it).\n2. While crepe is still in the pan, place a few strawberry slices and some blueberries on one side of crepe. Roll crepe over the fruit and continue rolling to the other side. Remove from pan. Repeat with remaining batter and fruit.\n3. Lightly drizzle crepes with additional syrup. Serve immediately.",
            category : "Breakfast",
            datePublished : "2023-03-29",
            url : "https://www.forksoverknives.com/recipes/vegan-breakfast/vegan-palacinky-czech-sweet-crepes/"
        )
        
    ]
}
