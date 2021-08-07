//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Yumin Gui on 8/6/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String)-> T {
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to loate \(file) in bundle.")
        }
        // 2. create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. create a decoder
        let decoder = JSONDecoder()
        // 4. create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        // 5.
        return decodedData
    }
}
