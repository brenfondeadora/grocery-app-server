//
//  CreateUsersTableMigrations.swift
//  
//
//  Created by Brenda Saavedra  on 19/05/23.
//

import Foundation
import Fluent

struct CreateUsersTableMigrations: AsyncMigration {
    func revert(on database: FluentKit.Database) async throws {
        try await database.schema("users")
            .delete()
    }
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("users")
            .id()
            .field("username", .string, .required).unique(on: "username")
            .field("password", .string, .required)
            .create()
    }
}
