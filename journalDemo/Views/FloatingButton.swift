//
//  FloatingButton.swift
//  journalDemo
//
//  Created by dmoney on 5/28/24.
//

import SwiftUI

struct FloatingButton: View {
    var body: some View {
        ZStack { 
            VStack(spacing: 40) {
            Text("Button")
                .font(.largeTitle)
            Text("Floating")
                .font(.title).foregroundColor(.gray)
            Text("You can also create floating buttons by using a ZStack so the button is on the top layer, over everything else")
            Spacer()
        }
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
#Preview {
    FloatingButton()
}
