//
//  ColorsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.
//

import SwiftUI

struct ColorsSample: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(colors: [.blue, .purple], startPoint: .top, endPoint: .center))
//            .frame(width: 200, height: 200)
//            .foregroundColor()
            .cornerRadius(10)
            .ignoresSafeArea()
    }
}

#Preview {
    ColorsSample()
}
