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
    //MVP
    var place1 = " "
    //STRETCH 1
    var place2 = " "
    var place3 = " "
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelTwo.text = "My uncle wants to go to the \(place1)."
    }
    
}
