//
//  UserRowView.swift
//  SwiftUIBasics
//
//  Created by Y K on 10.11.2023.
//

import SwiftUI

struct UserRowView: View {
    let user: User
    
    var body: some View {
        HStack {
            Image(user.icon)
                .resizable()
                .scaledToFill()
                .frame(width: 55, height: 55)
                .clipShape(Circle())
            
            Text(user.name)
                .font(.subheadline)
            
            Spacer()

            
            Image(systemName: "paperplane.circle.fill")
                .font(.title)
                .foregroundColor(Color(.systemBlue))
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserRowView(user: User(name: "Dan", icon: "venom1"))
}
