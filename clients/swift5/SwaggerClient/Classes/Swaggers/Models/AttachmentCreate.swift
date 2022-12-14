//
// AttachmentCreate.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct AttachmentCreate: Codable {

    public var name: String
    public var path: String
    public var contentType: String
    public var _description: String?
    public var accessUrl: String?
    public var accessType: String?
    public var issueId: Int?

    public init(name: String, path: String, contentType: String, _description: String? = nil, accessUrl: String? = nil, accessType: String? = nil, issueId: Int? = nil) {
        self.name = name
        self.path = path
        self.contentType = contentType
        self._description = _description
        self.accessUrl = accessUrl
        self.accessType = accessType
        self.issueId = issueId
    }

    public enum CodingKeys: String, CodingKey { 
        case name
        case path
        case contentType = "content_type"
        case _description = "description"
        case accessUrl = "access_url"
        case accessType = "access_type"
        case issueId = "issue_id"
    }

}
