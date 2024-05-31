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
                List{
                    VStack{
                        ForEach(journals) { journal in
                            //    Text("HellO?")
                            HStack{
                                if let imageData = journal.image,
                                   let uiImage = UIImage(data: imageData) {
                                    Image(uiImage: uiImage)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50, height: 50)
                                        .clipped()
                                } else {
                                    Image(systemName: "photo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                }
                                VStack(alignment: .leading) {
                                    Text(journal.title)
                                        .font(.headline)
                                    Text(journal.creationDate, style: .date)
                                        .font(.caption)
                                }
                            }
                        }
                    }
                    .padding()
                    .navigationTitle("Journal Prompt")
                }
                .listStyle(.automatic)
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
        ///*    */}
    }

}
#Preview {
    JournalRowView()
        .modelContainer(for: Journal.self, inMemory: true)
}
