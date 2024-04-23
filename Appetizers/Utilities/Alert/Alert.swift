//
//  Alert.swift
//  Appetizers
//
//  Created by Yevhenii M on 09.04.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dissmisButton: Alert.Button
}

struct AlertContext {
    //MARK: - Network alerts
    static let invalidData     = AlertItem(title: Text("Server Error"),
                                              message: Text("The data recieved from the server was invalid. Please contact support."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server. Please try again later."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let invalidURL      = AlertItem(title: Text("Server Error"),
                                              message: Text("There was an issue connecting to the server."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let genericError = AlertItem(title: Text("General Error"),
                                              message: Text("We cannot complete your request at this time, please check your internet connection."),
                                              dissmisButton: .default(Text("Ok")))
    
    //MARK: - Form alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Unable to save your personal account data. Please check required fields."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Please sure your email is correct."),
                                              dissmisButton: .default(Text("Ok")))
    
    
    //MARK: - account data alerts
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                              message: Text("Your account was successfully saved."),
                                              dissmisButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("There was an error saving your profile."),
                                              dissmisButton: .default(Text("Ok")))
}
