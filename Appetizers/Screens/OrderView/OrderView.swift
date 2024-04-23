//
//  OrderView.swift
//  Appetizers
//
//  Created by Yevhenii M on 09.04.2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("")
                    } label: {
//                        APButton(title: " \(order.totalPrice, specifier: "%.2f") - Place Order ")
                        Text(" \(order.totalPrice, specifier: "%.2f") - Place Order ")
                    }
                    .modifier(StandartButtonStyle())
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer.")
                }
                
            }
            .navigationTitle("📋 Orders")
        }
    }
    
    
}

#Preview {
    OrderView()
}
