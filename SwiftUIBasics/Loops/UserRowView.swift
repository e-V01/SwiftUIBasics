//
//  UserRowView.swift
//  SwiftUIBasics
//
//  Created by Y K on 10.11.2023.
//

import SwiftUI

struct UserRowView: View {
    let foodName: String
    
    var body: some View {
        HStack {
            Image(systemName: "fork.knife.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .clipShape(Circle())
            
            Text(foodName)
                .font(.subheadline)
            
            Spacer()

            
            Image(systemName: "checkmark")
                .font(.title)
                .foregroundColor(Color(.systemBlue))
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserRowView(foodName: "Carrot")
}
