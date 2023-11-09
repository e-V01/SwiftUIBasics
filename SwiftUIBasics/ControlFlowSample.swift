//
//  ControlFlowSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 09.11.2023.
//

import SwiftUI

struct ControlFlowSample: View {
    @State private var darkModeEnab = false
    
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
                    Image(systemName: "moon.circle.fill")
                        .font(.title2)
                        .imageScale(.medium)
                        
                    
                    Text("Dark Mode Enabled")
                        .font(.subheadline)
                        
                
                    
                }
                .padding(.horizontal)
                .frame(height: 44)
                .background(Color(.systemGroupedBackground))
                .clipShape(RoundedRectangle(cornerRadius: 10))
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
