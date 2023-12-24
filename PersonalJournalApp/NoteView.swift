//
//  NoteView.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct NoteView: View {
    @Binding var title: String
    @Binding var isNoteVisible: Bool
    var body: some View {
        VStack(){
            HStack{
                Spacer()
                Image(systemName: "x.circle.fill")
                    .font(.title)
                    .onTapGesture {
                        isNoteVisible = false
                    }
                
            }
            
            Image("note-theme")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(title)
        }.padding(20)
    }
}

#Preview {
    NoteView(title: Binding.constant("Test Title"), isNoteVisible: Binding.constant(true))
}
