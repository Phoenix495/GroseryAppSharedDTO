//
//  File.swift
//  GroseryAppSharedDTO
//
//  Created by Vitalii Serheiev on 23.11.2024.
//

import Foundation

public struct GroceryCategoryResponseDTO: Codable {
    public let id: UUID
    public let title: String
    public let color: String
    
    init(id: UUID, title: String, color: String) {
        self.id = id
        self.title = title
        self.color = color
    }
}
