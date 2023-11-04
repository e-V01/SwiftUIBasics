//
//  SpacersSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 04.11.2023.
// hepls to move us empty space

import SwiftUI

struct SpacersSample: View {
    var body: some View {
        //List View
        VStack {
            //cell1
            HStack {
                Image("venom1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("darrylclark")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Darryl Clark")
                        .font(.subheadline)
                       
                }
                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(.systemBlue))
                
//                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)

            }
            .padding(.horizontal)
            
            //cell2
            HStack {
                Image("venom2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("darrylclark")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Darryl Clark")
                        .font(.subheadline)
                       
                }
                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(.systemBlue))
                
//                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)

            }
            .padding(.horizontal)
            
            //cell3
            HStack {
                Image("venom3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("darrylclark")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Darryl Clark")
                        .font(.subheadline)
                       
                }
                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(.systemBlue))
                
//                Spacer()
//                    .frame(height: 25)
//                    .background(.blue)

            }
            .padding(.horizontal)
            
            Spacer()
            
            HStack {
                Image(systemName: "car")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text("darrylclark")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text("Darryl Clark")
                        .font(.subheadline)
                       
                }

                Spacer()
                
                

            }
            .padding(.leading)
        }
        .padding(.top)
    }
}

#Preview {
    SpacersSample()
}
