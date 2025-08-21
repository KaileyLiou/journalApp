//
//  JournalEntryModel.swift
//  JournalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftData
import Foundation

@Model
class JournalEntryModel {
    var date: Date
    var title: String
    var entry: String
    
    init(date: Date = Date(), title: String, entry: String) {
        self.date = date
        self.title = title
        self.entry = entry
    }
}
