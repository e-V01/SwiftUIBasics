//
//  Restaurant.swift
//  SwiftUIBasics
//
//  Created by Y K on 10.11.2023.
//

import Foundation

struct Restaurant: Identifiable {
    let id = NSUUID().uuidString
    let imageName: String
    let name: String
    let rating: Int
}
