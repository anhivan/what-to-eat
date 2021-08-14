//
//  ViewController.swift
//  what-to-eat
//
//  Created by Ivan Isakov on 13/08/2021.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var beginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func beginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToQuestionaire", sender: self)
    }
    
    //Initialise segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Check which segue has been chosen, in this case ResultViewController
        if segue.identifier == "goToQuestionaire" {
            //Create a variable holding reference to ResultViewController so we can access it's variables & methods
            let destinationVC = segue.destination as! QuestionaireViewController
            //Access it's bmiValue variable
        }
    }
    
    
}

