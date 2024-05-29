//
//  JournalRowView.swift
//  journalDemo
//
//  Created by dmoney on 5/25/24.
//

import SwiftUI
import SwiftData

struct JournalRowView: View {
    @Query(sort: \Journal.title) private var journals: [Journal]
    @State private var newJournalSheet = false
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    Text("Journal List View")
                }
                .padding()
                .navigationTitle("Journal Prompt")
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            newJournalSheet.toggle()
                        }) {
                            Image(systemName: "plus")
                                .font(.title)
                        }
                        .padding(20)
                        .foregroundColor(Color.white)           
                        .background(Color.purple)
                        .cornerRadius(.infinity)
                    }
                    .padding(.trailing, 30)
                    .sheet(isPresented: $newJournalSheet, content: {
                        NewJournal()
                            .presentationDetents([.medium])
                    })


                }
            }

        }
    }
}
#Preview {
    JournalRowView()
}
