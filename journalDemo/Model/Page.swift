//
//  Page.swift
//  journalDemo
//
//  Created by dmoney on 5/25/24.
//

import Foundation
import SwiftData

@Model
class Page {
    var text: String
    var images: [Data]?
    @Relationship(inverse: \Journal.pages) var journal: Journal? 
    //This allows for a page to belong to a Journal || Not required... SwiftData implicily discovers inverse relationships between models.

    init(text: String, images: [Data]? = nil) {
        self.text = text
        self.images = images
    }

}
