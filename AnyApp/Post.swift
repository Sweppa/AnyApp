//
//  Post.swift
//  AnyApp
//
//  Created by Yaroslav on 15.04.2023.
//

import Foundation

struct Post: Codable, CustomStringConvertible {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    var description: String {
        return "NetCall works! Showing the title: \(title) and id: \(id)"
    }
}
