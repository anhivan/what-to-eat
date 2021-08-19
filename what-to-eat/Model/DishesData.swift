//
//  DishesData.swift
//  what-to-ea/Users/ivanisakov/Private/Coding/Swift/Private Projects/what-to-eat/what-to-eat/Model/DishesData.swiftt
//
//  Created by Ivan Isakov on 13/08/2021.
//

import Foundation

struct DishesData {
    let dishesModel = [DishesModel(dish: "Cheese Burger", tip: "Some random tip about making a burger.", ingredients: ["Cheese", "Burger Patty", "Minced Beef", "Lettuce"], dishImage: #imageLiteral(resourceName: "Burger")),
                       DishesModel(dish: "Bo Kho", tip: "Some random tip about cooking Bo Kho", ingredients: ["Beef", "Lemongrass", "Coconutwater", "Spices"], dishImage: #imageLiteral(resourceName: "BoKho")),
                       DishesModel(dish: "Bánh Mì Bá Duyên", tip: "Some random tip about making a banh mi.", ingredients: ["Baguette", "Lettuce", "Paté", "Cucumber"], dishImage: #imageLiteral(resourceName: "BanhMi"))]
    
    var dishNumber = 0
    var ingredientNumber = 0
    
    mutating func getDishIngredient() -> String {
        if ingredientNumber < dishesModel[dishNumber].ingredients.count {
            return dishesModel[dishNumber].ingredients[ingredientNumber] as! String
        } else {
            return ""
        }
    }
    
    mutating func nextIngredient() {
        if ingredientNumber < dishesModel[dishNumber].ingredients.count {
            ingredientNumber += 1
        }
    }
    
    mutating func nextDish() {
        ingredientNumber = 0
        
        if dishNumber + 1 < dishesModel.count {
            dishNumber += 1
        }
    }
}
