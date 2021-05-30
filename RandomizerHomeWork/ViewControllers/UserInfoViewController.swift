//
//  UserInfoViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 29.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var userInfoText: UILabel!
    
    var textInfo: String!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            userInfoText.text = textInfo
        }
}
   
    



    
    







