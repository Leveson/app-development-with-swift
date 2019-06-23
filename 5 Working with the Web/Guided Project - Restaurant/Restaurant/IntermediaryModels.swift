//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Tshaka Lekholoane on 23/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
