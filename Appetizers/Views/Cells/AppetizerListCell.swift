//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Yevhenii M on 09.04.2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            //this method don't use cache to store images
//            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
//                image
//                    .styleAppetizerCellImage()
//            } placeholder: {
//                Image("food-placeholder")
//                    .styleAppetizerCellImage()
//            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
    
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
