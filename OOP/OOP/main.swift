//
//  main.swift
//  OOP
//
//  Created by Eren Akkoç on 7.05.2026.
//

import Foundation


let normalUser = User(nameInput: "Eren", ageInput: 21, jobInput: "Student", typeInput: .Admin)
normalUser.printUser()

let specialUser = SpecialUser(nameInput: "Esma", ageInput: 20, jobInput: "Student", typeInput: .User)
specialUser.printUser()
