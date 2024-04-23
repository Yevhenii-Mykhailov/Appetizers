//
//  Image+Ext.swift
//  Appetizers
//
//  Created by Yevhenii M on 12.04.2024.
//

import SwiftUI

extension Image {
    func styleAppetizerCellImage () -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}
