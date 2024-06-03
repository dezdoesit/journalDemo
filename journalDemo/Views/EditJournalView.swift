//
//  EditJournalView.swift
//  journalDemo
//
//  Created by dmoney on 5/28/24.
// private func saveTransaction() {
// this function is fired after the validation of the form is successful
//let page = Page(text: text, image: Data)
//  page.journal = page
//}

import SwiftUI

struct EditJournalView: View {
    @Bindable var journal: Journal
    @State private var isAddingPage = false
    var body: some View {
        VStack{
            Text(journal.title)
                .font(.largeTitle)
                .padding()
            Spacer()

            if journal.pages.first != nil {
                TextEditor(text: $journal.pages[0].text)
                    .font(.body)
                    .padding()
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } else {
                Button("Add Page") {
                    isAddingPage.toggle()
                }
                .sheet(isPresented: $isAddingPage) {
                    SwiftUIView(journal: journal)
                }
            }
        }
        .padding()
        .navigationTitle(journal.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditJournalView()
//}
