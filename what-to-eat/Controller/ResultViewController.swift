//
//  ResultViewController.swift
//  what-to-eat
//
//  Created by Ivan Isakov on 19/08/2021.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDishImage: UIImageView!
    
    var dishName: String?
    var dishImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = dishName
        resultDishImage.image = dishImage
    }
}
