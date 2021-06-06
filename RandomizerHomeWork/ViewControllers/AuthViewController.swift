//
//  AuthViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 25.05.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    var userName: String!
    var user = Person.getPerson()

    
    @IBOutlet weak var userNameLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBackground()
        userNameLabel.text = "Welcome, \(user.fullName)!"
        
    }

    @IBAction func logoutButton(_ sender: Any) {
    
        dismiss(animated: true, completion: nil)
    }
}

