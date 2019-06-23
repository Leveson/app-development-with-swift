//
//  Order.swift
//  Restaurant
//
//  Created by Tshaka Lekholoane on 23/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
