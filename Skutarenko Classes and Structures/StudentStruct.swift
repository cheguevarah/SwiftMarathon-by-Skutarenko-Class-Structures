//
//  Student.swift
//  Skutarenko Classes and Structures
//
//  Created by Sasha on 3/28/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

        //:1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).

struct Student {
    var firstName : String
    var lastName : String
    var dateOfBirth: (day: Int, month: Int, year: Int)
    var mark: Float
    
    init(firstName: String, lastName: String, dateOfBirth: (day: Int, month: Int, year: Int), mark: Float) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.mark = mark
        journal.append(self)
    }
    
   
}

var journal = [Student]()
