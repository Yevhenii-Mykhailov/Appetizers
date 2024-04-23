//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Yevhenii M on 12.04.2024.
//

import Foundation

extension Date {
    
    var eighteenYearAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
