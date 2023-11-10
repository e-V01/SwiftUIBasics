//
//  User.swift
//  SwiftUIBasics
//
//  Created by Y K on 10.11.2023.
//

import SwiftUI

struct User: Identifiable {
    let id = NSUUID().uuidString
    let name: String
    let icon: String
}
