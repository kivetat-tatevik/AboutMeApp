//
//  User.swift
//  AboutMeApp
//
//  Created by Tatevik Khunoyan on 09.08.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUsers() -> User {
        User(
            userName: "Alex", 
            password: "11",
            person: Person.getPerson())
        
    }
}
struct Person {
    let firstName: (String, String)
    let lastName: (String, String)
    let dream: (String, String)
    let hope: (String, String)
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            firstName: ("Имя", "Татевик"),
            lastName: ("Фамилия", "Хуноян"),
            dream: ("Мечта", "Стать разработчиком iOS"),
            hope: ("Надежда", "Есть"),
            bio: "Lorem Ipsum - это текст-рыба, часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной 'рыбой' для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum."
        )
    }
}


