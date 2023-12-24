//
//  NoteView.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct NoteListItemView: View {
    var title: String
    var body: some View {
        VStack{
            Image("note-theme")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 250, maxHeight: 400)
                .clipped()
            Text(title)
        }
    }
}

#Preview {
    NoteListItemView(title: "this one is test title")
}
