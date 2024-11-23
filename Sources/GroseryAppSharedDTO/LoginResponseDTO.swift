//
//  LoginResponseDTO.swift
//  GroseryAppSharedDTO
//
//  Created by Vitalii Serheiev on 23.11.2024.
//

import Foundation

public struct LoginResponseDTO: Codable {
    public let error: Bool
    public var reason: String? = nil
    public let token: String?
    public let userId: UUID?
    
    public init(error: Bool, reason: String? = nil, token: String?, userId: UUID?) {
        self.error = error
        self.reason = reason
        self.token = token
        self.userId = userId
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.error = try container.decode(Bool.self, forKey: .error)
        self.reason = try container.decodeIfPresent(String.self, forKey: .reason)
        self.token = try container.decodeIfPresent(String.self, forKey: .token)
        self.userId = try container.decodeIfPresent(UUID.self, forKey: .userId)
    }
}
