//
//  ScrollViewsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 05.11.2023.
//

import SwiftUI

struct ScrollViewsSample: View {
    let foodDeliveryPhotos = ["ukranian",
                              "pizza",
                              "bbq",
                              "sushi",
                              "georgian",
                              "burger",
                              "korean",
                              "ramen",
                              "chinese",
                              "cakes"]
    var body: some View {
        VStack(alignment: .leading) {
            // this way when user scrolls the text if frozen at the top
            Text("Maiami")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.leading)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(foodDeliveryPhotos, id: \.self) { image in
                        RestaurantsView(photo: image)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsSample()
}
