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
    var image: Data
    var creationDate: Date
    @Relationship(deleteRule: .cascade) var pages: [Page] = []

    init(title: String, image: Data, creationDate: Date = .now) {
        self.title = title
        self.image = image
        self.creationDate = creationDate
    }

}
