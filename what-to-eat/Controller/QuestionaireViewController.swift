//
//  QuestionaireViewController.swift
//  what-to-eat
//
//  Created by Ivan Isakov on 14/08/2021.
//

import Foundation
import UIKit

class QuestionaireViewController: UIViewController {
    @IBOutlet weak var ingredientLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    var dishesData = DishesData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientLabel.text = dishesData.getDishIngredient()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender == yesButton {
            dishesData.nextIngredient()
            ingredientLabel.text = dishesData.getDishIngredient()
        }
        else if sender == noButton {
            dishesData.nextDish()
            ingredientLabel.text = dishesData.getDishIngredient()
        }
    }
}
