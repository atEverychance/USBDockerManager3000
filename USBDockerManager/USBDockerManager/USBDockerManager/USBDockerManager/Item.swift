//
//  Item.swift
//  USBDockerManager
//
//  Created by Jadel McGuire on 2024-12-15.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
