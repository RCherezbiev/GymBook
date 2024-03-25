//
//  GymNoteView.swift
//  GymBook
//
//  Created by Rustam Cherezbiev on 18.03.2024.
//

import SwiftUI

struct GymNoteView: View {
    var body: some View {
        NavigationStack {
            List {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Hello")
    }
}

#Preview {
    GymNoteView()
}
