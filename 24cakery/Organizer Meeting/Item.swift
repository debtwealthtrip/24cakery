//
//  Item.swift
//  Newly Revised 3rd In Brief Edition
//
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
