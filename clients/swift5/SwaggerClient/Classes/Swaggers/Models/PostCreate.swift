//
// PostCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PostCreate: Codable {

    public var title: String
    public var _description: String?
    public var keywords: String?
    public var author: String?
    public var featuredImage: String?
    public var content: String?
    /** A Post must belongs to one of the site. */
    public var siteId: Int?

    public init(title: String, _description: String? = nil, keywords: String? = nil, author: String? = nil, featuredImage: String? = nil, content: String? = nil, siteId: Int? = nil) {
        self.title = title
        self._description = _description
        self.keywords = keywords
        self.author = author
        self.featuredImage = featuredImage
        self.content = content
        self.siteId = siteId
    }

    public enum CodingKeys: String, CodingKey { 
        case title
        case _description = "description"
        case keywords
        case author
        case featuredImage = "featured_image"
        case content
        case siteId = "site_id"
    }

}