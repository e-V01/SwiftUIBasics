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
                UserRowView(foodName: items)
                
            }
        }
    }
}



#Preview {
    LoopsSample()
}
