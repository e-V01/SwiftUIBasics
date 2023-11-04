//
//  PaddingSample.swift
//  SwiftUIBasics
//
//  Created by Y K on 04.11.2023.
//

import SwiftUI

struct PaddingSample: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 10) {
            Text("Your top genres in spotify today")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.leading, 4)
                
            
            Text("This is your top genres, take a look into what is your favorite songs")
                .padding(.leading, 12)
        }
//        .padding()
//        .background(.green)
//            .frame(width: 100, height: 50)
//            .background(Color.green)
//            .padding(.horizontal, 32)
//            .background(Color.blue)
//            .padding([.top, .leading], 25)
//            .padding(64)
//            .background(Color.gray)

    }
}

#Preview {
    PaddingSample()
}
