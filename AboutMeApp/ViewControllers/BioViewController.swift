//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 09.08.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var titlePerson: UILabel!
    @IBOutlet var bioPerson: UILabel!
    
    var personBio = Person.getPerson().bio
    var personTitle = Person.getPerson().firstName.1
    
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
        
        titlePerson.text = personTitle
        bioPerson.text = personBio
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
    

}
