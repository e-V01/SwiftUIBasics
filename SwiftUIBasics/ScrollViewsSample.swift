//
//  ScrollViewsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 05.11.2023.
//

import SwiftUI

struct ScrollViewsSample: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0 ... 20, id: \.self) { index in
                Rectangle()
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

#Preview {
    ScrollViewsSample()
}
