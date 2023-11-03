//
//  ImagesSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.

//Order in which we apply modifiers to view matters since that influnce the View itself

import SwiftUI

struct ImagesSample: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
//            .font(.system(size: 200))
//            .imageScale(.large)
            .foregroundColor(.colorScheme)
            .scaledToFill()
            .frame(width: 200, height: 100)
            .clipped()
            
    }
}

#Preview {
    ImagesSample()
}
