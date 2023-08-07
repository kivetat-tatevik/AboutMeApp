//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 06.08.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlet
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - UserName & Password
    var userName = "11"
    var password = "11"
    
    // MARK: - Override Functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController
        else { return }
        
        destinationVC.username = userNameTF.text
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password 😀"
            )
            return false
        }
        return true
    }
    
    // MARK: - IB Action
    @IBAction func forgotUserNameTapped() {
        showAlert(
            title: "Your User Name",
            message: userName
        )
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(
            title: "You Password",
            message: password
        )
    }
    @IBAction func loginButtonTapped() { }
    
    @IBAction func unwindSegueToLoginVC(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

// MARK: - Extension
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonTapped()
        }
        return true
    }
}

