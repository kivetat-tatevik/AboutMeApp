//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 06.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlet
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - UserName & Password
    private let userName = User.getUsers().userName
    private let password = User.getUsers().password
    
    // MARK: - Override Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = userName
        passwordTextField.text = password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = userName
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == userName, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password 😀",
                textField: passwordTextField
            )
            return false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    // MARK: - IB Action
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!",message: "Your name is \(userName) 😉")
        : showAlert(title: "Oops!",message: "Your password is \(password) 😉")
    }
   
    @IBAction func unwindSegueToLoginVC(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    // MARK: - Private Functions
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

