//
//  ViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 25.05.2021.
//

import UIKit



class ViewController: UIViewController {
    
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
        nameField.delegate = self
        settingsForAlert()
        passField.returnKeyType = UIReturnKeyType.done
        
    }
    
    private func settingsForAlert() {
        alertName.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertError.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
            passField.resignFirstResponder()
        } else {
            switchLogin()
            performSegue(withIdentifier: "secondView", sender: nil)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcome = segue.destination as? AuthViewController else { return }
        
          if nameField.text != "user" || passField.text != "123" {
              self.present(alertError, animated: true, completion: nil)
              
              return
          }
       // welcome.name = "Hello \(nameField)"
        
       /* guard let destination = segue.destination as? AuthViewController else { return }
        destination.name = "Hello User!"*/
        
    }

    @IBAction func switchLogin() {
        passField.text = ""
        nameField.text = ""
        
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

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
 


