//
//  ImageViewController.swift
//  RandomizerHomeWork
//
//  Created by Леся on 28.05.2021.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var placeOfBirthLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var educationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackground()
        
        let name = Person.getPerson()
        let info = UserInfo.getUserInfo()
        nameLabel.text = name.fullName
        placeOfBirthLabel.text = info.placeOfBirth
        dateOfBirthLabel.text = info.dateOfBirth
        educationLabel.text = info.education
        
        imageView.image = info.image
       
    }
}
