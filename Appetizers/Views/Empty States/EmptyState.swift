//
//  EmptyState.swift
//  Appetizers
//
//  Created by Yevhenii M on 11.04.2024.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -60)
        }
        
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "dajwhgdka wdakwghd jahwd hagwdkawh kajdh ")
}
