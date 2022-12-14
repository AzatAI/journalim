//
// MediaRead.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MediaRead: Codable {

    public var createdAt: Date?
    public var updatedAt: Date?
    public var name: String
    public var path: String
    public var contentType: String
    public var _description: String?
    public var accessUrl: String?
    public var accessType: String?
    public var _id: Int

    public init(createdAt: Date? = nil, updatedAt: Date? = nil, name: String, path: String, contentType: String, _description: String? = nil, accessUrl: String? = nil, accessType: String? = nil, _id: Int) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.name = name
        self.path = path
        self.contentType = contentType
        self._description = _description
        self.accessUrl = accessUrl
        self.accessType = accessType
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case name
        case path
        case contentType = "content_type"
        case _description = "description"
        case accessUrl = "access_url"
        case accessType = "access_type"
        case _id = "id"
    }

}
