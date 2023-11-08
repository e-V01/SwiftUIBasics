//
//  GridsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct GridsSample: View {
    let columns = [GridItem(.fixed(50)), GridItem(.fixed(50))]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0 ... 50, id: \.self) { index in
                Rectangle()
                        .frame(width: 50, height: 50)
                }
            }
        }
    }
}

#Preview {
    GridsSample()
}
