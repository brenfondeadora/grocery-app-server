//
//  CreateGroceryCategoryTableMigration.swift
//  
//
//  Created by Brenda Saavedra Cantu on 16/06/23.
//

import Foundation
import Fluent

class CreateGroceryCategoryTableMigration: AsyncMigration {
    
    func prepare(on database: FluentKit.Database) async throws {
        try await database.schema("grocery_categories")
            .id()
            .field("title", .string, .required)
            .field("color_code", .string, .required)
            .field("user_id", .uuid, .references("users", "id"))
            .create()
    }
    
    func revert(on database: Database) async throws {
        try await database.schema("grocery_categories")
            .delete()
    }
}
