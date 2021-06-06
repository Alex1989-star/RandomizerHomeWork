//
//  Alert.swift
//  RandomizerHomeWork
//
//  Created by Леся on 03.06.2021.
//

import UIKit

class Alert {
    
    /*let alertError = UIAlertController(title: "Error", message: "Incorrect password or login", preferredStyle: UIAlertController.Style.alert)
    
    let alertName = UIAlertController(title: "Oops!", message: "Your name is user", preferredStyle: UIAlertController.Style.alert)
    
    let alertPassword = UIAlertController(title: "Oops!", message: "Your password is password", preferredStyle: UIAlertController.Style.alert)
    
   private func settingsForAlert() {
        alertName.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        alertError.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    }
}*/
    private static func showBasicAlert(vc: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
    
    static func userNameAlert(vc: UIViewController){
        let user = User.getUserData()
        showBasicAlert(vc: vc, title: "Forgot your name?", message: "You user name is \(user.login)")
    }
    
    static func passwordAlert(vc: UIViewController){
        let password = User.getUserData()
        showBasicAlert(vc: vc, title: "Forgot your password?", message: "You password is \(password.password)")
    }
    
    static func wrongData(vc: UIViewController){
        showBasicAlert(vc: vc, title: "Error", message: "You entered incorrect data")
    }
}
