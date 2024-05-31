//
//  JournalRow.swift
//  journalDemo
//
//  Created by dmoney on 5/28/24.
//

import SwiftUI
import SwiftData

struct JournalRow: View {

    @Environment(\.modelContext) var modelContext
//    @Query(sort: \Journal.image) private var journals: [Journal]

    var body: some View {
        HStack{
            Image(systemName: "book")
            VStack{
                Text("Journal Title")
                Text("Date Created: ")
            }
            Spacer()
        }
    }
}

//#Preview {
//    JournalRow()
//}
