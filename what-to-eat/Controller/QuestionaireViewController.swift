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
    
    let dishesData = DishesData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredientLabel.text = dishesData.getDishIngredient()
    }
    
}
