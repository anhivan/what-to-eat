//
//  ViewController.swift
//  what-to-eat
//
//  Created by Ivan Isakov on 13/08/2021.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet weak var beginButton: UIButton!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var introductionLabel: UILabel!
    
    let introductionData = IntroductionData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introductionLabel.text = introductionData.introduction
        
        helloLabel.text = introductionData.hello[Int.random(in: 0..<4)]
        helloLabel.sizeToFit()
        
        beginButton.setTitle(introductionData.beginButtonText, for: .normal)
        beginButton.sizeToFit()
    }

    @IBAction func beginButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToQuestionaire", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToQuestionaire" {
            _ = segue.destination as! QuestionaireViewController
        }
    }
}

