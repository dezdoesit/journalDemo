//
//  JournalRowView.swift
//  journalDemo
//
//  Created by dmoney on 5/25/24.
//

import SwiftUI

struct JournalRowView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    Text("Hello")
                }
                .padding()
                .navigationTitle("Journal Prompt")
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .font(.title)
                        }
                        .padding(20)
                        .foregroundColor(Color.white)            .background(Color.purple)            .cornerRadius(.infinity)        }        .padding(.trailing, 30) // Add 30 points on the trailing side of the button    }}”

                }
            }

        }
    }
}
#Preview {
    JournalRowView()
}
