//
//  IGProfileSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct IGProfileSample: View {
    @State private var followingButton = false
    var followingState: String {
        return followingButton ? "Followed" : "Following"
    }
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    // so the size of img is 1/3 of screen size, no matter the size or model of phone
    let imageDimension = UIScreen.main.bounds.width / 3
    
    var body: some View {
        ScrollView {
            VStack {
                
                // nav bar
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                    
                    Spacer()
                    
                    Text("venom")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.blue)
                        .font(.caption)
                    
                    Spacer()
                }
                
                // profile img + stats
                HStack {
                    Image("venom2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88, height: 88)
                        .clipShape(Circle())
                    
                    Spacer()
                    // stats
                    HStack(spacing: 33) {
                        VStack(spacing: 2) {
                            Text("3000")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("Posts")
                                .font(.caption)
                        }
                       
                        VStack(spacing: 2) {
                            Text("3M")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("Followers")
                                .font(.caption)
                        }
                        
                        VStack(spacing: 2) {
                            Text("500")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Text("Following")
                                .font(.caption)
                        }
                    }
                    
                }
                
                // so it won`t influence the entire and mian VStack
                // user info
                VStack(alignment: .leading, spacing: 2) {
                    Text("Poisonous Venom")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("www.instagram.com/venom")
                        .font(.caption)
                }
                // cool trick though
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.vertical, 4)
                
                //common followers view
                HStack(spacing: -10) {
                    Image("venom3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32,height: 32)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth:2))
                    
                    Image("venom3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32,height: 32)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth:2))
                    
                    Image("venom3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32,height: 32)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth:2))
                    
                    HStack(spacing: 2) {
                        Text("Followed by ")
                        +
                        Text("spiderman, ")
                            .fontWeight(.semibold)
                        +
                        Text("ironman")
                            .fontWeight(.semibold)
                        +
                        Text(" and ")
                        +
                        Text(" 150 others ")
                            .fontWeight(.semibold)
                            
                    }
                    .font(.caption)
                    .padding(.leading)
                        
                    
                    Spacer()
                }
                
                //action buttons
                HStack {
                    Button {
                        followingButton = true
                    } label: {
                        Text("\(followingState)")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .frame(width: 150, height: 35)
                            .overlay(RoundedRectangle(cornerRadius: 4)
                                .stroke(Color(.systemGray4)))
                    }

                    
                    Text("Message")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .frame(width: 150, height: 35)
                        .overlay(RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray4)))

                    
                    Image(systemName: "person.badge.plus")
                        .font(.footnote)
                        .frame(width: 35, height: 35)
                        .overlay(RoundedRectangle(cornerRadius: 4)
                            .stroke(Color(.systemGray4)))
                }
                
                // media type
                HStack {
                    Spacer()
                    Image(systemName: "squareshape.split.3x3")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play.rectangle")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "play")
                        .font(.title2)
                    Spacer()
                    Image(systemName: "person.crop.square")
                        .font(.title2)
                    Spacer()
                }
                .foregroundStyle(Color(.darkGray))
                .padding(.vertical, 6)
                
                // grid view
                
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0 ..< 15, id: \.self) { index in
                       Image("venom3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: imageDimension, height: imageDimension)
                            .border(Color.white)
                            .clipped()
                    }
                
                }
            }
            .padding()
        }
    }
}
 

#Preview {
    IGProfileSample()
}
