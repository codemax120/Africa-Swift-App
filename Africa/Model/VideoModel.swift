//
//  VideoModel.swift
//  Africa
//
//  Created by Max Herrera on 9/23/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed property
    var thumbnail: String {
        "video-\(id)"
    }
    
}
