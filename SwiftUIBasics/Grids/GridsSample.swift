//
//  GridsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct GridsSample: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ... 100, id: \.self) { index in
                Rectangle()
                        .frame(height: 50)
                }
            }
        }
    }
}

#Preview {
    GridsSample()
}
