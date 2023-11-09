//
//  StatePropertySample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct StatePropertySample: View {
    @State private var count = 0
    
    @State private var likes = 0
    @State private var img = "heart"
    @State private var imgColor = Color.black

    var body: some View {
        VStack {
            HStack {
                Text("Counter")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                
                Spacer()
            }
            HStack(spacing: 24) {
                Button{
                    count = count - 1
                } label: {
                    Text("-")
                        
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
                
                Text("\(count)")
                    .font(.largeTitle)
                
                Button{
                    count = count + 1
                } label: {
                    Text("+")
                        .font(.largeTitle)
                        .frame(width: 56, height: 56)
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                }
            }
            
            Divider()
            // ig Post
            VStack {
                HStack {
                    Image("venom2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                    
                    Text("venom")
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                }
                .padding(.horizontal, 5)
                
                Image("venom3")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 420)
                    .clipped()
                
                HStack(spacing: 19) {
                    Button {
                        likes += 1
                        imgColor = Color.red
                        img = "heart.fill"
                    } label: {
                        Image(systemName: img)
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundStyle(imgColor)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundStyle(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane")
                            .font(.system(size: 15, weight: .semibold))
                            .imageScale(.large)
                            .foregroundStyle(.black)
                    }
                    
                    Spacer()
                }
                
                .padding(.leading, 5)
                .padding(.top, 5)
                
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("\(likes) likes")
                        .offset(x: -45)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.vertical, 1)
                    
                    HStack(spacing: 4) {
                        
                        Text("venom ")
                            .offset(x: -45)

                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        Text("Let me see your soul sweety")
                            .offset(x: -45)

                    }
                }
                .padding(.top, 2)
                .padding(.leading, 8)
            }
        }
    }
}

#Preview {
    StatePropertySample()
}
