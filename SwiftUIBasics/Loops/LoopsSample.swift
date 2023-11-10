//
//  LoopsSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 04.11.2023.
//

import SwiftUI

struct LoopsSample: View {
    let users = [ User(name: "Verstappen", icon: "venom2"),
                 User(name: "Mikainonen", icon: "bbq"),
                 User(name: "Ayrton", icon: "venom3"),
                 User(name: "Hamilton", icon: "venom1"),
                 User(name: "Valteri", icon: "korean"),
                 User(name: "Lando", icon: "ramen")
    ]
    
    var body: some View {
        VStack {
            ForEach(users) { user in
                UserRowView(user: user)
                
            }
        }
    }
}



#Preview {
    LoopsSample()
}
