//
//  ViewController.swift
//  LoginApp
//
//  Created by Алексей Гайдуков on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userTF: UITextField!
    @IBOutlet var passTF: UITextField!
    
    private var user = "User"
    private var password = "Asd"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }


    @IBAction func loginPassed() {
        if userTF.text != user || passTF.text != password {
            showAlert(title: "Invalid login or password",
                      messege: "Please, enter correct login and password",
                      textFild: passTF
            )
        }
        return // отмена
    }
    
    @IBAction func forgotRegister(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(title: "Oops!", messege: "Your login is \(user)")
        } else {
            showAlert(title: "Oops!", messege: "Your password is \(password)")
        }
    }
    
        
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTF.text = ""
        passTF.text = ""
    }
}
    

//MARK: Extension
extension LoginViewController {
    private func showAlert(title: String, messege: String, textFild: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let alerOK = UIAlertAction(title: "OK", style: .default) { _ in
            textFild?.text = ""
        }
        alert.addAction(alerOK)
        present(alert,animated: true)
        
    }
}

extension LoginViewController: UITextFieldDelegate {
   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
       view.endEditing(true)
    }

}
