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
}
