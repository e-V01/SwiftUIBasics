//
//  ControlFlowSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 09.11.2023.
//

import SwiftUI

struct ControlFlowSample: View {
    @State private var darkModeEnab = false
    var body: some View {
        VStack(alignment: .leading) {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            VStack(alignment: .leading) {
                Text("Appearance")
                    .font(.headline)
               
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
        .background(Color.cyan)
    }
}

#Preview {
    ControlFlowSample()
}
