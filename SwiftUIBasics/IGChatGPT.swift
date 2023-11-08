//
//  IGChatGPT.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct IGChatGPT: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { _ in
                    PostView()
                }
            }
            .navigationBarTitle(Text("Feed"), displayMode: .inline)
            .edgesIgnoringSafeArea(.all) // Making the content full-screen
        }
        .edgesIgnoringSafeArea(.all) // Including the navigation view
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // User Info
            HStack {
                Image("profile") // Replace with your profile image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Username")
                    .font(.headline)
            }
            .padding([.top, .leading, .trailing])

            // Post Image
            Image("venom") // Replace with your post image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 300)
                .clipped()

            // Like, Comment, and Share Buttons
            HStack {
                Button(action: {}) {
                    Image(systemName: "heart")
                }
                Button(action: {}) {
                    Image(systemName: "message")
                }
                Button(action: {}) {
                    Image(systemName: "paperplane")
                }
                Spacer()
            }
            .padding(.all, 10)

            // Caption
            Text("This is a caption for the post...")
        }
    }
}

#Preview {
    IGChatGPT()
}
