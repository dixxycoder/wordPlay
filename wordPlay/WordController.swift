//
//  WordController.swift
//  wordPlay
//
//  Created by Grant Spraker on 10/27/21.
//

import UIKit

class WordController: UIViewController
{
    //Outlets
    @IBOutlet weak var labelTwo: UILabel!
    
    var place1 = " "
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelTwo.text = "My uncle wants to go the \(place1)."
    }
    
}
