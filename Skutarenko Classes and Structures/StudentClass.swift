//
//  StudentClass.swift
//  Skutarenko Classes and Structures
//
//  Created by Sasha on 3/28/19.
//  Copyright © 2019 Sasha. All rights reserved.
//

import UIKit

class StudentCL{
    var firstName : String
    var lastName : String
    var dateOfBirth: (day: Int, month: Int, year: Int)
    var mark: Float
    
    init(firstName: String, lastName: String, dateOfBirth: (day: Int, month: Int, year: Int), mark: Float) {
        self.firstName = firstName
        self.lastName = lastName
        self.dateOfBirth = dateOfBirth
        self.mark = mark
        classJournal.append(self)
    }
    
}

var classJournal = [StudentCL]()
