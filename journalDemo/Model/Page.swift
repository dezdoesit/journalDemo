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

    init(text: String, images: [Data]? = nil) {
        self.text = text
        self.images = images
    }

}
