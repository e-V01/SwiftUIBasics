//
//  ShapesSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.
//
// we can do capsule, rectangle, ellipse or circle or even custom one
import SwiftUI

struct ShapesSample: View {
    var body: some View {
        Ellipse()
            .foregroundColor(.yellow)
//            .stroke(.red, lineWidth: 15)
            .frame(width: 150, height: 80)
            .cornerRadius(30)
    }
}

#Preview {
    ShapesSample()
}
