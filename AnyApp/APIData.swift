//
//  Devices.swift
//  AnyApp
//
//  Created by Yaroslav on 15.04.2023.
//

import Foundation

struct APIData: Codable {
    
    let devices: [Main]
}


struct Main: Codable {
    
        let id: Int
        let deviceName: String
        let intensity: Int
        let mode: String
        let productType: String
}
