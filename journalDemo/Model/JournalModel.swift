//
//  JournalModel.swift
//  journalDemo
//
//  Created by dmoney on 5/23/24.
//

import Foundation
import SwiftData

@Model
class Journal {
    var title: String
    @Attribute(.externalStorage)
    var image: Data?
    var creationDate: Date
    @Relationship(deleteRule: .cascade) var pages: [Page] = []
    //to sync with cloudData/ CloudKit - must be optional with default value //[Page]?
    init(title: String, image: Data, creationDate: Date = .now) {
        self.title = title
        self.image = image
        self.creationDate = creationDate
    }

}
