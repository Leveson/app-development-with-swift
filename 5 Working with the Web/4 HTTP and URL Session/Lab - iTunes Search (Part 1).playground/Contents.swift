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

let baseURL = URL(string: "https://itunes.apple.com/search")!
let query: [String: String] = ["term": "drake",
                               "media": "musicVideo",
                               "limit": "5"
]

let url = baseURL.withQueries(query)!
let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data,
        let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}

task.resume()
