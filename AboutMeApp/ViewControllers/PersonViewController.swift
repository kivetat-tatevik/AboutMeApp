//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 09.08.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    
    @IBOutlet var personInfo: UILabel!
   
    var person = Person.getPerson()

    private let primaryColor = UIColor(
        red: 255/255,
        green: 126/255,
        blue: 147/255,
        alpha: 1
    )
    
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personInfo.text = "\(person.firstName.0): \(person.firstName.1)\n\(person.lastName.0): \(person.lastName.1)\n\(person.dream.0): \(person.dream.1)\n\(person.hope.0): \(person.hope.1)"
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}
