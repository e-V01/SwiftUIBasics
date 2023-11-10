//
//  RestaurantsView.swift
//  SwiftUIBasics
//
//  Created by Y K on 10.11.2023.
//

import SwiftUI

struct RestaurantsView: View {
    let restaurant: Restaurant
    
    var body: some View {
        VStack {
            Image(restaurant.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 150)
                .clipped()
            
            // Info view
            HStack {
                //restaurant info
                VStack(alignment: .leading) {
                    Text(restaurant.name)
                        .font(.system(size: 17))
                        .fontWeight(.bold)
                    
                    Text("$4.99 Delivery Fee | 30 - 40 min")
                        .font(.caption)
                        .foregroundStyle(.gray)
                        
                    
                    
                }
                Spacer()
                // rating
                Text("\(restaurant.rating)")
                    .font(.caption2)
                    .padding(6)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    RestaurantsView(restaurant: Restaurant(imageName: "ukranian", name: "Veselka", rating: Int(4.9)))
}
