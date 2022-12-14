//
// UserRead.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserRead: Codable {

    public var username: String
    public var email: String
    public var fullname: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var _id: Int
    public var isStaff: Bool?
    public var isAdmin: Bool?

    public init(username: String, email: String, fullname: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, _id: Int, isStaff: Bool? = nil, isAdmin: Bool? = nil) {
        self.username = username
        self.email = email
        self.fullname = fullname
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self._id = _id
        self.isStaff = isStaff
        self.isAdmin = isAdmin
    }

    public enum CodingKeys: String, CodingKey { 
        case username
        case email
        case fullname
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case _id = "id"
        case isStaff = "is_staff"
        case isAdmin = "is_admin"
    }

}
