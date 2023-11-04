//
//  LoopsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 04.11.2023.
//

import SwiftUI

struct LoopsSample: View {
    let shoppingItems = ["Pepper",
                        "Garlic",
                        "Bread",
                        "Turkey",
                        "Rosmarine",
                        "Apples",
                        "Orange",
                        "Cucumber"]
    
    var body: some View {
        VStack {
            ForEach(shoppingItems, id: \.self) { items in
                HStack {
                    Image(systemName: "fork.knife.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(Circle())
                    
                    Text(items)
                        .font(.subheadline)
                    Spacer()

                    
                    Image(systemName: "checkmark")
                        .font(.title)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.horizontal)
                
            }
        }
    }
}

#Preview {
    LoopsSample()
}
