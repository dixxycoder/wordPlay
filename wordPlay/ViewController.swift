//
//  ViewController.swift
//  wordPlay
//
//  Created by Grant Spraker on 10/26/21.
//

//MARK: Border for the Button
// Button Corner Radius and Border code from StackOverflow.com
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

import UIKit

class ViewController: UIViewController
{
    // Outlets
    @IBOutlet weak var lableOne: UILabel!
    
//MARK: MVP & 1
    //TextField
    //MVP
    @IBOutlet weak var textField: UITextField!
    //STRETCH 1
    @IBOutlet weak var adjectiveText: UITextField!
    @IBOutlet weak var verbText: UITextField!
    
//MARK: MVP & 1
    //MVP
    var place = " "
    //STYRETCH 1
    var placeA = " "
    var placeV = " "
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        textField.resignFirstResponder()
        
//MARK: MVP
        lableOne.text = "My uncle wants to go to the ______."

    }
    
//MARK: MVP & 1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextViewController = segue.destination as! WordController
        //MVP
        place = textField.text ?? " "
        //STRETCH 1
        placeA = adjectiveText.text ?? " "
        placeV = verbText.text ?? " "
        
        //MVP
        nextViewController.place1 = place
        //STRETCH 1
        nextViewController.place2 = placeA
        nextViewController.place3 = placeV
    }
}

