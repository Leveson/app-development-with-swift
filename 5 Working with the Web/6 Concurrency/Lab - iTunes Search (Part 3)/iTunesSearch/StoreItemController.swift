//
//  StoreItemController.swift
//  iTunesSearch
//
//  Created by Tshaka Lekholoane on 22/06/2019.
//  Copyright © 2019 Caleb Hicks. All rights reserved.
//

import Foundation

struct StoreItemController {
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
}
