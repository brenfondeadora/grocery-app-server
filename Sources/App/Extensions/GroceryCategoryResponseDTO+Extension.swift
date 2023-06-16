//
//  GroceryCategoryResponseDTO+Extension.swift
//  
//
//  Created by Brenda Saavedra Cantu on 16/06/23.
//

import Foundation
import GroceryAppSharedDTO
import Vapor

extension GroceryCategoryResponseDTO: Content {
    
    init?(_ grocegoryCategory: GroceryCategory) {
        guard let id = grocegoryCategory.id else {
            return nil
        }
        
        self.init(id: id, title: grocegoryCategory.title, colorCode: grocegoryCategory.colorCode)
    }
    
}
