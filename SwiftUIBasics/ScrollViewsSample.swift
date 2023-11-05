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
                        VStack {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 150)
                                .clipped()
                            
                            // Info view
                            HStack {
                                //restaurant info
                                VStack(alignment: .leading) {
                                    Text("Haiku - Tampa")
                                        .font(.system(size: 17))
                                        .fontWeight(.bold)
                                    
                                    Text("$4.99 Delivery Fee | 30 - 40 min")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                        
                                    
                                    
                                }
                                Spacer()
                                // rating
                                Text("4.8")
                                    .font(.caption2)
                                    .padding(6)
                                    .background(Color(.systemGray5))
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewsSample()
}
