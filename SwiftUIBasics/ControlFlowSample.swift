//
//  ControlFlowSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 09.11.2023.
//

import SwiftUI

struct ControlFlowSample: View {
    @State private var darkModeEnab = false
    @State private var notificationEnabled = false
    @State private var faceIDEnabled = false


    
    var backgroundColor: Color {
        // conditional computed property
        //        if darkModeEnab {
        //            return .black
        //        } else {
        //            return .white
        //        }
        // ternary operator
        return darkModeEnab ? .black : .white
    }
    
    var rowBackgroundColor: Color {
        return darkModeEnab ? Color.white.opacity(0.1) : Color(.systemGroupedBackground)
        
    }
    var body: some View {
        VStack(alignment: .leading) {
            //            if darkModeEnab {
            //                Text("Settings")
            //                    .font(.largeTitle)
            //                    .fontWeight(.semibold)
            //                    .foregroundStyle(.white)
            //                    .padding()
            //            } else {
            //                Text("Settings")
            //                    .font(.largeTitle)
            //                    .fontWeight(.semibold)
            //                    .foregroundStyle(.black)
            //                    .padding()
            //            }
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Appearance")
                    .font(.headline)
                    .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                
                Toggle(isOn: $darkModeEnab) {
                    HStack {
                        Image(systemName: "moon.circle.fill")
                            .font(.title2)
                            .imageScale(.medium)
                            .foregroundStyle(.blue)
                        
                        
                        
                        Text("Dark Mode Enabled")
                            .font(.subheadline)
                            .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                        
                        
                    }
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(rowBackgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Account")
                    .font(.headline)
                    .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                
                VStack {
                    Toggle(isOn: $notificationEnabled) {
                        HStack {
                            Image(systemName: "bell.circle.fill")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundStyle(.blue)
                            
                            
                            
                            VStack(alignment: .leading) {
                                Text("Notifications")
                                    .font(.subheadline)
                                    .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                                
                                if notificationEnabled {
                                    Text("Push Notifications enabled")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }
                            }
                            
                        }
                        
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    
                    Divider()
                    
                    Toggle(isOn: $faceIDEnabled) {
                        HStack {
                            Image(systemName: "faceid")
                                .font(.title2)
                                .imageScale(.medium)
                                .foregroundStyle(.blue)
                            
                            
                            
                            Text("Enable Face ID")
                                .font(.subheadline)
                                .foregroundStyle(darkModeEnab ? Color.white : Color.black)
                            
                            
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 44)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                }
                .background(rowBackgroundColor)       .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
            }
            .padding()
            
            Spacer()
        }
        .background(backgroundColor)
    }
}

#Preview {
    ControlFlowSample()
}
