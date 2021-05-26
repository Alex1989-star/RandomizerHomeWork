//
//  ViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 25.05.2021.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    let alertError = UIAlertController(title: "Error", message: "Incorrect password or login", preferredStyle: UIAlertController.Style.alert)
    
    let alertName = UIAlertController(title: "Oops!", message: "Your name is user", preferredStyle: UIAlertController.Style.alert)
    
    let alertPassword = UIAlertController(title: "Oops!", message: "Your password is password", preferredStyle: UIAlertController.Style.alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passField.delegate = self
        
        settingsForAlert()
    }
    
    private func settingsForAlert() {
        alertName.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        //self.present(alertName, animated: true)
        
        alertPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        //self.present(alertPassword, animated: true)
        
        alertError.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
        passField.resignFirstResponder()
        
        return true
    }

     @IBAction func switchLogin() {
        let alertError = UIAlertController(title: "Error", message: "Incorrect password or login", preferredStyle: UIAlertController.Style.alert)
        
        if nameField.text == "user" && passField.text == "123" {
            performSegue(withIdentifier: "secondView", sender: nil)
        } else {
            self.present(alertError, animated: true, completion: nil)
        }
        
        
    }
    @IBAction func forgotUserNameButton() {
        let alertName = UIAlertController(title: "Oops!", message: "Your name is user", preferredStyle: .alert)
        alertName.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertName, animated: true)
        
    
    }
    
    @IBAction func tappedForgotPassword() {
        let alertPassword = UIAlertController(title: "Oops!", message: "Your password is 123", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertPassword, animated: true)
        
    }
}


