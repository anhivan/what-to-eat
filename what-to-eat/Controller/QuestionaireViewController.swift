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
        let ingredientCount =  dishesData.dishesModel[dishesData.dishNumber].ingredients.count
        
        if sender == yesButton {
            dishesData.nextIngredient()
            ingredientLabel.text = dishesData.getDishIngredient()
            
            if ingredientCount == dishesData.ingredientNumber{
                self.performSegue(withIdentifier: "showResult", sender: self)
            }

        }
        else if sender == noButton {
            dishesData.nextDish()
            ingredientLabel.text = dishesData.getDishIngredient()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            _ = segue.destination as! ResultViewController
        }
    }
}
