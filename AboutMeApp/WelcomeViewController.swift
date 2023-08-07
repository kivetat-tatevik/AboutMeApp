//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 06.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: - IB Outlet
    @IBOutlet var userNameLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Welcome, \(username ?? "")!"
    }
}
