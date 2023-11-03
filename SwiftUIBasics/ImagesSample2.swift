//
//  ImagesSample2.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.
//

import SwiftUI

struct ImagesSample2: View {
    var body: some View {
        Image("venom2")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
//            .clipped()
            .clipShape(Circle())
    }
}

#Preview {
    ImagesSample2()
}
