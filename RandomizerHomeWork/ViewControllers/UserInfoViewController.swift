//
//  UserInfoViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 29.05.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var strollsLabel: UILabel!
    @IBOutlet weak var sportLabel: UILabel!
    @IBOutlet weak var carLabel: UILabel!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            changeBackground()
            let data = Hobbies.getHobbies()
            strollsLabel.text = data.strolls
            sportLabel.text = data.sport
            carLabel.text = data.car
            
        }
}
   
    



    
    







