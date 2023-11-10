//
//  ScrollViewsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 05.11.2023.
//

import SwiftUI

struct ScrollViewsSample: View {
    let restaurants = [Restaurant(imageName: "ukranian", name: "Veselka", rating: Int(4.9)),
                       Restaurant(imageName: "pizza", name: "Tutto Bene", rating: Int(4.7)),
                       Restaurant(imageName: "bbq", name: "American Style BBQ", rating: Int(4.9)),
                       Restaurant(imageName: "sushi", name: "Arigato", rating: Int(4.4)),
                       Restaurant(imageName: "georgian", name: "Tzkrvanie", rating: Int(4.2)),
                       Restaurant(imageName: "burger", name: "BrgeON", rating: Int(4.6)),
                       Restaurant(imageName: "korean", name: "KimCHI CHI", rating: Int(4.7)),
                       Restaurant(imageName: "ramen", name: "RamenMO", rating: Int(4.8)),
                       Restaurant(imageName: "chinese", name: "FuJi", rating: Int(4.9)),
                       Restaurant(imageName: "cakes", name: "Cherry pick", rating: Int(4.4)),
    ]
//    let foodDeliveryPhotos = ["ukranian",
//                              "pizza",
//                              "bbq",
//                              "sushi",
//                              "georgian",
//                              "burger",
//                              "korean",
//                              "ramen",
//                              "chinese",
//                              "cakes"]
    

    
    var body: some View {
        VStack(alignment: .leading) {
            // this way when user scrolls the text if frozen at the top
            Text("Maiami")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(restaurants) { restaurant in
                        RestaurantsView(restaurant: restaurant)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsSample()
}
