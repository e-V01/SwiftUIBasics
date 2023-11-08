//
//  IGProfileSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 08.11.2023.
//

import SwiftUI

struct IGProfileSample: View {
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
                    Spacer()

                    
                    VStack {
                        Text("3000")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Posts")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("3M")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Followers")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Following")
                            .font(.caption)
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
}
 

#Preview {
    IGProfileSample()
}
