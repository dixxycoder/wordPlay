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
    
    @IBOutlet weak var textField: UITextField!
    
    var place = " "
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        textField.resignFirstResponder()
        
//MARK: MVP1 / lable "uncle"
        lableOne.text = "My uncle wants to go the ______."

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nextViewController = segue.destination as! WordController
    
        place = textField.text ?? ""
        
        nextViewController.place1 = place
    
    }
}

