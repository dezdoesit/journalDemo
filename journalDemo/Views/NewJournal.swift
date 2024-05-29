//
//  NewJournal.swift
//  journalDemo
//
//  Created by dmoney on 5/28/24.
//

import SwiftUI
import PhotosUI

struct NewJournal: View {
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) var dismiss

    @State private var title = ""
    @State private var journalCover: PhotosPickerItem?
    @State private var journalCoverData: Data?
    var body: some View {
        NavigationStack{
            Form{
                HStack {
                    VStack {
                        PhotosPicker(
                            selection: $journalCover,
                            matching: .images,
                            photoLibrary: .shared()) {
                                Group {
                                    if let journalCoverData,
                                       let uiImage = UIImage(data: journalCoverData) {
                                        Image(uiImage: uiImage)
                                            .resizable()
                                            .scaledToFit()
                                    } else {
                                        Image(systemName: "photo")
                                            .resizable()
                                            .scaledToFit()
                                            .tint(.primary)
                                    }
                                }
                                .frame(width: 75, height: 100)
                                .overlay(alignment: .bottomTrailing) {
                                    if journalCoverData != nil {
                                        Button {
                                            journalCover = nil
                                            journalCoverData = nil
                                        } label: {
                                            Image(systemName: "x.circle.fill")
                                                .foregroundStyle(.red)
                                        }
                                    }
                                }
                        }

                        Text("Cover Pic")
                    }
                    
                    Divider()
                    TextField("Journal Title", text: $title)
                        .textFieldStyle(.automatic)
                }
                Button("Create new Journal") {
                    let newJournal = Journal(title: title, image: journalCoverData!)
                    context.insert(newJournal)
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .padding()
                .disabled(title.isEmpty || journalCover == nil)
            }
            
        }
        .task(id: journalCover) {
            if let data = try? await journalCover?.loadTransferable(type: Data.self) {
                journalCoverData = data
            }
        }
    }
}

#Preview {
    NewJournal()
}
