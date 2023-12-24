//
//  AddNewNoteSheet.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct AddNewNoteSheet: View {
    @Binding var publicNoteData: [Note]
    @Binding var privateNoteData: [Note]
    @State var textFieldText : String = ""
    @Binding var isAddNewNoteClicked: Bool
    @Binding var isPrivate: Bool
    var body: some View {
        VStack(alignment: .center){
            TextField("Enter Jurnal title",
                      text: $textFieldText)
            .padding(.horizontal, 30)
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
            Button {
                if(isPrivate){
                    privateNoteData.append(Note(title: textFieldText))
                }else{
                    publicNoteData.append(Note(title: textFieldText))
                }
                isAddNewNoteClicked = false
            } label: {
                Text("Add")
                    .padding()
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

#Preview {
    AddNewNoteSheet(
        publicNoteData: Binding.constant([]),
        privateNoteData: Binding.constant([]),
        isAddNewNoteClicked: Binding.constant(false),
        isPrivate: Binding.constant(false)
    )
}
