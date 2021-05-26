//
//  AuthViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 25.05.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    var name = ""
    @IBOutlet var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = name
        
    }
    @IBAction func tappedLogOutButton() {
        
        dismiss(animated: true)
    }
}
