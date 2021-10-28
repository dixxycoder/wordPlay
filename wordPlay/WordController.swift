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

//MARK: MVP & 1
    var place1 = " " // N
    //STRETCH 1
    var place2 = " " // A
    var place3 = " " // V
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelTwo.text = "My uncle wants to go \(place3) to the \(place2) \(place1)."
    }
    
}
