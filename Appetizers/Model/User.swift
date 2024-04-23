//
//  User.swift
//  Appetizers
//
//  Created by Yevhenii M on 11.04.2024.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
