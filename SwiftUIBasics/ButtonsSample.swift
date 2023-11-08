//
//  ButtonsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct ButtonsSample: View {
    @State var backgroundColor = Color.blue
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(backgroundColor)
                .frame(width: UIScreen.main.bounds.width, height: 200)
                .ignoresSafeArea()
            
            Button("Button") {
                backgroundColor = Color.orange
            }
            
            Button {
                backgroundColor = Color.green
            } label: {
                Text("Change Background")
                    .font(.headline)
                    
                    .frame(width: 300, height: 50)
                    .background(Color.purple)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
            }
            
            Button {
                backgroundColor = Color.red
            } label: {
                Text("Change Background")
                    .font(.headline)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 15)
                    .background(Color.cyan)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
            }
            
            Button {
                self.backgroundColor = .brown
            } label: {
                  Circle()
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.white)
                        .font(.title)
                    )
                    .shadow(radius: 10)
            }
            
            Button {
                backgroundColor = Color.indigo
            } label: {
               Image(systemName: "paperplane")
                    .font(.title)
                    .foregroundStyle(.white)
                    .frame(width: 80, height: 80)
                    .background(Color.teal)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    ButtonsSample()
}
