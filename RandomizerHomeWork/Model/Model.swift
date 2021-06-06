//
//  Model.swift
//  RandomizerHomeWork
//
//  Created by Леся on 03.06.2021.
//

import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    
    static func getUserData() -> User {
        User(login: "user", password: "123", person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
    static func getPerson() -> Person {
            Person(name: "Алексей", surname: "Шипилов")
        }
    }

struct UserInfo {
    let dateOfBirth: String
    let placeOfBirth: String
    let education: String
    let image: UIImage
    
    static func getUserInfo() -> UserInfo {
        UserInfo(
            dateOfBirth: "24.11.1989",
            placeOfBirth: "город Москва",
            education: "Московская Финансово Юридическая академия",
            image: #imageLiteral(resourceName: "фото.jpg"))
    }
}

struct Hobbies {
    let sport: String
    let car: String
    let strolls: String
    
    static func getHobbies() -> Hobbies {
        Hobbies(
            sport: "Люблю заниматься спортом, футбол, плавание, спортзал, долгое время профессионально занимался спортивным плаванием.",
            car: "Увлекаюсь автомобилями и автоспортом, мечтаю купить себе Porshe 911.",
            strolls: "Люблю в хорошую погоду погулять по лесу или провести время на берегу озера или реки, подышать свежем воздухом, таким образом я отдыхаю.")
    }
    
}








