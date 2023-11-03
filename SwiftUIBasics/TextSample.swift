//
//  TextSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.
//

import SwiftUI

struct TextSample: View {
    var body: some View {
        Text("Hello, Mate! Welcome to the best of SwiftUI and let`s explore this world together")
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .fontWeight(.semibold)
            .foregroundColor(.red)
            .multilineTextAlignment(.center)
            .strikethrough()
    }
}

