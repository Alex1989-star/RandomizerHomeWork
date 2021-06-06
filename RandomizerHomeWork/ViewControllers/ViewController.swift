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
    
    var user = User.getUserData()
    
    let alertError = UIAlertController(title: "Error", message: "Incorrect password or login", preferredStyle: UIAlertController.Style.alert)
    
    let alertName = UIAlertController(title: "Oops!", message: "Your name is user", preferredStyle: UIAlertController.Style.alert)
    
    let alertPassword = UIAlertController(title: "Oops!", message: "Your password is password", preferredStyle: UIAlertController.Style.alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passField.delegate = self
        nameField.delegate = self
        changeBackground()
        viewWillAppear(true)
        
        loginButton.layer.cornerRadius = 10
        userNameButton.layer.cornerRadius = 10
        forgotPasswordButton.layer.cornerRadius = 10

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
            textField.resignFirstResponder()
            passField.resignFirstResponder()
        } else {
            switchLogin(self)
            //performSegue(withIdentifier: "secondView", sender: nil)
        }
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBar = segue.destination as? UITabBarController{
            tabBar.viewControllers?.forEach {
                if let viewContoller = $0 as? AuthViewController{
                    viewContoller.userName = user.login
                    if nameField.text != "user" || passField.text != "123" {
                        self.present(alertError, animated: true, completion: nil)
                }
            }
        }
    }
    }
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let tapBarController = segue.destination as? UITabBarController else { return }
            guard let viewControllers = tapBarController.viewControllers else {return}
            
            for controller in viewControllers {
                switch controller {
                case let welcomVC as AuthViewController:
                    welcomVC.userWelcomeName = user
                    if nameField.text != "user" || passField.text != "123" {
                        self.present(alertError, animated: true, completion: nil)
                        return
                    }
                case let navigationViewController as UINavigationController:
                     let navigationViewControllers = navigationViewController.viewControllers
                    guard let infoVC = navigationViewControllers.first as? UserInfoViewController else { return }
                    infoVC.textInfo = userInfo
                default:
                    break
                }
            }
    }*/

       /* guard let welcome = segue.destination as? AuthViewController else { return }
        
          if nameField.text != "user" || passField.text != "123" {
              self.present(alertError, animated: true, completion: nil)
              
              return
          }*/

    
    @IBAction func switchLogin(_ sender: Any) {
        passField.text = ""
        nameField.text = ""
        
        guard
            nameField.text == user.login,
            passField.text == user.password
        else {
            Alert.wrongData(vc: self)
            passField.text = nil
            return
        }
        performSegue(withIdentifier: "secondView", sender: nil)
    }
        

    @IBAction func forgotUserNameButton() {
        Alert.userNameAlert(vc: self)
        
        /*let alertName = UIAlertController(title: "Oops!", message: "Your name is user", preferredStyle: .alert)
        alertName.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertName, animated: true)*/
    }
    
    @IBAction func tappedForgotPassword() {
        Alert.passwordAlert(vc: self)
        /*let alertPassword = UIAlertController(title: "Oops!", message: "Your password is 123", preferredStyle: .alert)
        alertPassword.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertPassword, animated: true)*/
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
extension UIViewController {
        func changeBackground(){
            let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "BackgroundTwo")
            backgroundImage.contentMode = .scaleToFill
            view.insertSubview(backgroundImage, at: 0)
        }
}

