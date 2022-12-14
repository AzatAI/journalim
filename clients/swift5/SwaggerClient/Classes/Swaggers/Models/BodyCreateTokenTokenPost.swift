//
// BodyCreateTokenTokenPost.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BodyCreateTokenTokenPost: Codable {

    public var grantType: String?
    public var username: String
    public var password: String
    public var scope: String?
    public var clientId: String?
    public var clientSecret: String?

    public init(grantType: String? = nil, username: String, password: String, scope: String? = nil, clientId: String? = nil, clientSecret: String? = nil) {
        self.grantType = grantType
        self.username = username
        self.password = password
        self.scope = scope
        self.clientId = clientId
        self.clientSecret = clientSecret
    }

    public enum CodingKeys: String, CodingKey { 
        case grantType = "grant_type"
        case username
        case password
        case scope
        case clientId = "client_id"
        case clientSecret = "client_secret"
    }

}
