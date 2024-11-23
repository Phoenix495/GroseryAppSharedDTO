//
//  RegisterResponseDTO.swift
//  GroseryAppSharedDTO
//
//  Created by Vitalii Serheiev on 23.11.2024.
//


import Foundation

public struct RegisterResponseDTO: Codable {
    public let error: Bool
    public var reason: String?
    
    public init(error: Bool, reason: String? = nil) {
        self.error = error
        self.reason = reason
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.error = try container.decode(Bool.self, forKey: .error)
        self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
    }
}
