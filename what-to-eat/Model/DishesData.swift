//
//  DishesData.swift
//  what-to-ea/Users/ivanisakov/Private/Coding/Swift/Private Projects/what-to-eat/what-to-eat/Model/DishesData.swiftt
//
//  Created by Ivan Isakov on 13/08/2021.
//

import Foundation

struct DishesData {
    var dishNumber = 0
    var ingredientNumber = 0
    
    let dishesModel = [DishesModel(dish: "Cheese Burger", tip: "Some random tip about making a burger.", ingredients: ["Cheese", "Burger Patty", "Minced Beef", "Lettuce"], dishImage: #imageLiteral(resourceName: "Burger")),
                       DishesModel(dish: "Bo Kho", tip: "Some random tip about cooking Bo Kho", ingredients: ["Beef", "Lemongrass", "Coconutwater", "Spices"], dishImage: #imageLiteral(resourceName: "BoKho")),
                       DishesModel(dish: "Bánh Mì Bá Duyên", tip: "Some random tip about making a banh mi.", ingredients: ["Baguette", "Lettuce", "Paté", "Cucumber"], dishImage: #imageLiteral(resourceName: "BanhMi"))]
    
    func getDishIngredient() -> String{
        return dishesModel[dishNumber].ingredients[ingredientNumber] as! String
    }
}
