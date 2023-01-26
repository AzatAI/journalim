//
// SiteRead.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SiteRead: Codable {

    public var createdAt: Date?
    public var updatedAt: Date?
    public var title: String
    public var _description: String?
    public var logo: String?
    public var siteUrl: String?
    public var _id: Int

    public init(createdAt: Date? = nil, updatedAt: Date? = nil, title: String, _description: String? = nil, logo: String? = nil, siteUrl: String? = nil, _id: Int) {
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.title = title
        self._description = _description
        self.logo = logo
        self.siteUrl = siteUrl
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case title
        case _description = "description"
        case logo
        case siteUrl = "site_url"
        case _id = "id"
    }

}