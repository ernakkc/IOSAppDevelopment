//
//  SpecialUser.swift
//  OOP
//
//  Created by Eren Akkoç on 7.05.2026.
//


class SpecialUser: User {
    
    override func printUser() {
        print("-------SPECIAL USER-------\nName: \(self.name)\nAge: \(self.age)\nJob: \(self.job)\nType: \(self.type)\n")
    }
}
