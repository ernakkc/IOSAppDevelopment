//
//  user.swift
//  OOP
//
//  Created by Eren Akkoç on 7.05.2026.
//

import Foundation

enum UserType{
    case Admin
    case User
}


class User {
    var name:String
    var age:Int
    var job:String
    var type: UserType
    private var hairColor:String
    
    // Initalizer
    init(nameInput:String, ageInput:Int, jobInput:String, typeInput:UserType) {
        self.name = nameInput
        self.age = ageInput
        self.job = jobInput
        self.type = typeInput
        self.hairColor = ""
    }
    
    func printUser(){
        print("Name: \(self.name)\nAge: \(self.age)\nJob: \(self.job)\nType: \(self.type)\n")
    }
    
    func setHairColor(color:String) {
        self.hairColor = color
    }
    
    //  ACCESS LEVEL
    /// open, public, internal, fileprivate, private
    private func testFunc() {
        print("Test Function")
    }
}



