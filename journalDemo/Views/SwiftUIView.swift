//
//  SwiftUIView.swift
//  journalDemo
//
//  Created by dmoney on 5/31/24.
//

import SwiftUI

struct SwiftUIView: View {

    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss
    var journal: Journal

    @State private var pageText = ""

    var body: some View {
        Form{
            TextEditor(text: $pageText)
            Button("Save") {
                let newPage = Page(text: pageText)
                journal.pages.append(newPage)
                dismiss()
            }
        }
    }
}

//#Preview {
//    SwiftUIView()
//}
