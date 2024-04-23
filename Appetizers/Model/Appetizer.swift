//
//  Appetizer.swift
//  Appetizers
//
//  Created by Yevhenii M on 09.04.2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 2,
                                           name: "Boolka",
                                           description: "hot sweety boolka",
                                           price: 22.14,
                                           imageURL: "url",
                                           calories: 10,
                                           protein: 2,
                                           carbs: 43)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 01,
                                           name: "Boolka one",
                                           description: "hot sweety boolka",
                                           price: 22.14,
                                           imageURL: "url",
                                           calories: 10,
                                           protein: 2,
                                           carbs: 43)
    
    static let orderItemTwo = Appetizer(id: 02,
                                           name: "Boolka two",
                                           description: "hot sweety boolka",
                                           price: 22.14,
                                           imageURL: "url",
                                           calories: 10,
                                           protein: 2,
                                           carbs: 43)
    
    static let orderItemThree = Appetizer(id: 03,
                                           name: "Boolka three",
                                           description: "hot sweety boolka",
                                           price: 22.14,
                                           imageURL: "url",
                                           calories: 10,
                                           protein: 2,
                                           carbs: 43)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
