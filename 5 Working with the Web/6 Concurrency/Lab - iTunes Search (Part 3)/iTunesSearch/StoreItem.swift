//
//  StoreItem.swift
//  iTunesSearch
//
//  Created by Tshaka Lekholoane on 22/06/2019.
//  Copyright © 2019 Caleb Hicks. All rights reserved.
//

import Foundation

struct StoreItems: Codable {
    let results: [StoreItem]
}

struct StoreItem: Codable {
    var artist: String
    var name: String
    var genre: String
    var rating: String
    var artworkURL: URL
    
    enum CodingKeys: String, CodingKey {
        case artist = "artistName"
        case name = "trackName"
        case genre = "primaryGenreName"
        case rating = "contentAdvisoryRating"
        case artworkURL = "artworkUrl100"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: CodingKeys.name)
        artist = try values.decode(String.self, forKey: CodingKeys.artist)
        genre = try values.decode(String.self, forKey: CodingKeys.genre)
        rating = try values.decode(String.self, forKey: CodingKeys.rating)
        artworkURL = try values.decode(URL.self, forKey: CodingKeys.artworkURL)
    }
}
