//
//  RegisterResponseDTO.swift
//  
//
//  Created by Brenda Saavedra  on 19/05/23.
//

import Foundation
import Vapor

struct RegisterResponseDTO: Content {
    let error: Bool
    var reason: String? = nil
}
