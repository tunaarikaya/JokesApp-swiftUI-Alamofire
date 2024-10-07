//
//  jokesData.swift
//  jokesAppSwiftUI
//
//  Created by Mehmet Tuna Arıkaya on 9.09.2024.
//

import SwiftUI


struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
