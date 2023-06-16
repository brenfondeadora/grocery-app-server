//
//  GroceryController.swift
//  
//
//  Created by Brenda Saavedra Cantu on 16/06/23.
//

import Foundation
import Vapor

class GroceryController: RouteCollection {
    
    func boot(routes: RoutesBuilder) throws {
        
        // /api/users:/:userId
        let api = routes.grouped("api", "users", ":userId")
        
        // POST: Saving GroceryCategory
        // /api/users/:userId/grocery-categories
        api.post("grocery-categories", use: saveGroceryCategory)
    
    }
    
    func saveGroceryCategory(req: Request) async throws -> String {
        
        // DTO for the request
        
        
        // DTO for the response
        
        
        return "OK"
    }
    
}
