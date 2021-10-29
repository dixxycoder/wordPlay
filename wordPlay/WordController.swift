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
    
    //STRECT 2
    @IBOutlet weak var sentLabel: UILabel!
    @IBOutlet weak var wordTextField: UITextField!
    
    //MARK: MVP & 1
    var place1 = " " // N
    //STRETCH 1
    var place2 = " " // A
    var place3 = " " // V
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        labelTwo.text = "My uncle wants to go \(place3) to the \(place2) \(place1)."
        
        //background
        assignbackground()
        
       
    }
    
    // image for background.
    func assignbackground()
    {
            let background = UIImage(named: "danald duck")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
    }
    
//MARK: STRECT 2
    // stackoverflow
    let string = \(place3)
    let string = \(place2)
    let string = \(place1)
    let characters = Array(string)
    print(characters)
  
    
    @IBAction func alertAlert(_ sender: Any)
    {
        //Create Alert
        let alert = UIAlertController (title: "Good job 😀", message: "_____", preferredStyle: .alert)
        
        //Put OK Button on Alert
        let ok = UIAlertAction (title: "OK", style: .default, handler: nil)
        
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
