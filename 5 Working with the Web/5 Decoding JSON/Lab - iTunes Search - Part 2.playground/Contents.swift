import UIKit

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map {
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

struct StoreItems: Codable {
    let results: [StoreItem]
}

struct StoreItem: Codable {
    var artist: String
    var name: String
    var genre: String
    var rating: String
    
    enum CodingKeys: String, CodingKey {
        case artist = "artistName"
        case name = "trackName"
        case genre = "primaryGenreName"
        case rating = "contentAdvisoryRating"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: CodingKeys.name)
        artist = try values.decode(String.self, forKey: CodingKeys.artist)
        genre = try values.decode(String.self, forKey: CodingKeys.genre)
        rating = try values.decode(String.self, forKey: CodingKeys.rating)
    }
}

func fetchItems(matching query: [String: String], completion: @escaping ([StoreItem]?) -> Void ) {
    let baseURL = URL(string: "https://itunes.apple.com/search")!
    
    guard let url = baseURL.withQueries(query) else {
        completion(nil)
        print("Unable to build URL with supplied queries.")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        let decoder = JSONDecoder()
        if let data = data,
            let storeItems = try? decoder.decode(StoreItems.self, from: data) {
            completion(storeItems.results)
        } else {
            print("Either no data was returned, or data was not serialised.")
            completion(nil)
            return
        }
    }
    
    task.resume()
}

let query: [String: String] = ["term": "drake",
                               "media": "musicVideo",
                               "limit": "5"
]

fetchItems(matching: query) { (items) in
    if let items = items {
        print(items)
    }
}
