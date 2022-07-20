//
//  Persons.swift
//  HomeWork10
//
//  Created by John Doe on 20/07/2022.
//

import Foundation

struct Person {
    
    let name:   String
    let lastname: String
    let email:  String
    let telNumber: String
    
    var fullName: String {
        "\(name) \(lastname)"
    }
}

extension Person {
    
    static func getContacts() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let lastnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let tel = DataStore.shared.phones.shuffled()
       
        
        for index in 0..<names.count {
            
            let person = Person(
            
                name: names[index],
                lastname: lastnames[index],
                email: emails[index],
                telNumber: tel[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}




class DataStore {
    
    static let shared = DataStore()
    
    private init() {}
    
    let names = [
        
        "Вася",
        "Вова",
        "Миша",
        "Антон",
        "Наташа",
        "Яша",
        "Семв",
        "Ваня",
        "Натан",
        "Боря"
    ]
    
    let surnames = [
        "Глушко",
        "Рвбинович",
        "Натанзон",
        "Перельмуттер",
        "Каганович",
        "Берия",
        "Ягода",
        "Смит",
        "Тетчер",
        "Черчиль"
    ]
    
    let emails = [
        
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru",
        "info@gmail.ru"
    ]
    
    let phones = [
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111",
        "555666111"
    ]
}
