//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Yevhenii M on 09.04.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
