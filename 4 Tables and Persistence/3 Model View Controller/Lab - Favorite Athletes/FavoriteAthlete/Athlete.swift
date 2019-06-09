//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Tshaka Lekholoane on 09/06/2019.
//

import Foundation

struct Athlete {
    
    var name: String
    var age: String
    var league: String
    var team: String
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
    
}
