//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Max Herrera on 9/22/22.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {

        // MARK: 1. Locale the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locale \(file) in bundle")
        }

        // MARK: 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locale \(file) in bundle")
        }

        // MARK: 3. Create a decoder
        let decoder = JSONDecoder()

        // MARK: 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to locale \(file) in bundle")
        }

        // MARK: 5. Return the ready-to-use data
        return loaded
        
    }
}
