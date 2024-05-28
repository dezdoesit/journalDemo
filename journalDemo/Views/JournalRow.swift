//
//  JournalRow.swift
//  journalDemo
//
//  Created by dmoney on 5/28/24.
//

import SwiftUI

struct JournalRow: View {
    var body: some View {
        HStack{
            Image(systemName: "book.fill")
            VStack{
                Text("Journal Title")
                Text("Date Created: ")
            }
        }
    }
}

#Preview {
    JournalRow()
}
