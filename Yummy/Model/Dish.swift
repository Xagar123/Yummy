//
//  Dish.swift
//  Yummy
//
//  Created by Sagar Das on 23/09/23.
//

import Foundation

struct Dish {
    let id, name, description, image: String?
    let calories: Double?
    
    var formattedCalories: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
    
}
