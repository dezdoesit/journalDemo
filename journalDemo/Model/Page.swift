//
//  Page.swift
//  journalDemo
//
//  Created by dmoney on 5/25/24.
//

import Foundation
import SwiftData


class Page {
    var text: String
    var images: [Data]?

    @Relationship(inverse: \Journal.pages) var journal: Journal?

    init(text: String, images: [Data]? = nil) {
        self.text = text
        self.images = images
    }

}
