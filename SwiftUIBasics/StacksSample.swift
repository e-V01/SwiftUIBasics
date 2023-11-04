//
//  StacksSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 03.11.2023.
//

import SwiftUI

struct StacksSample: View {
    var body: some View {
        // parent Vstack
        VStack(spacing: 15) {
            //child1
            VStack(alignment: .leading) {
                Text("Your top genres")
                HStack(spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .fill(Color.orange)
                                .frame(width: 180, height: 100)
                                
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        
                        Image("venom3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 15, y: 0)
                            
                            
                            
                    }
                    .cornerRadius(10)
                    .clipped()
                    
                    ZStack(alignment: .bottomTrailing) {
                        ZStack(alignment: .topLeading) {
                            Rectangle()
                                .fill(Color.purple)
                                .frame(width: 180, height: 100)
                                .cornerRadius(10)
                            
                            
                            Text("Hip-Hop")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                        }
                        Image("venom2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 64, height: 64)
                            .rotationEffect(.degrees(30))
                            .offset(x: 15, y: 0)
                    }
                    
                }
                .cornerRadius(10)
                .clipped()
            }
            
            //child2
            VStack(alignment: .leading, spacing: 15) {
                Text("Top 100 songs the USA")
                HStack(spacing: 12) {
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 180, height: 100)
                            .cornerRadius(10)
                        
                        
                        Text("Hip-Hop")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(width: 180, height: 100)
                            .cornerRadius(10)
                        
                        
                        Text("Hip-Hop")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
            
            //child3
            VStack(alignment: .leading, spacing: 15) {
                Text("Feautured podcast categories")
                HStack(spacing: 12) {
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(Color.brown)
                            .frame(width: 180, height: 100)
                            .cornerRadius(10)
                        
                        
                        Text("Hip-Hop")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    ZStack(alignment: .topLeading) {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 180, height: 100)
                            .cornerRadius(10)
                        
                        
                        Text("Hip-Hop")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
        }
        
//        VStack(alignment: .leading, spacing: 8) {
//            Rectangle()
//                .fill(Color.purple)
//                .frame(width: 300, height: 300)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.cyan)
//                .frame(width: 100, height: 100)
//            
//        }
        
        
//        VStack(spacing: 0) {
//            ZStack {
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.black)
//                .frame(width: 160, height: 150)
//                
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.blue)
//                .frame(width: 100, height: 50)
//                
//                RoundedRectangle(cornerRadius: 10)
//                    .fill(Color.green)
//                .frame(width: 75, height: 40)
//            }
//            
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.red)
//                .frame(width: 160, height: 150)
//            
//            RoundedRectangle(cornerRadius: 10)
//                .fill(Color.yellow)
//                .frame(width: 160, height: 150)
//        }
//        VStack {
//            HStack {
//                // this is the user cell or row view
//                
//                Image("venom3")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 44,height: 44)
//                    .clipShape(Circle())
//                VStack {
//                    Text("Michelle Schumacher")
//                        .bold()
//                    
//                    Text("Multiple times race winner")
//                        .foregroundColor(.gray)
//                }
//            }
//            
//            HStack {
//                // this is the user cell or row view
//                
//                Image("venom2")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 44,height: 44)
//                    .clipShape(Circle())
//                VStack {
//                    Text("Michelle Schumacher")
//                        .bold()
//                    
//                    Text("Multiple times race winner")
//                        .foregroundColor(.gray)
//                }
//            }
//        }
    }
}

#Preview {
    StacksSample()
}
