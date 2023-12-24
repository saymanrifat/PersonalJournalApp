//
//  HomeView.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct HomeView: View {
    @Binding var publicNoteData:[Note]
    @Binding var privateNoteData:[Note]
    @Binding var isPrivate: Bool
    @State var isNoteVisible: Bool = false
    
    @State var selectedTitle: String = ""
    @State var selectedImage: String = ""
    
    
    var dataService: DataService = DataService()
    var body: some View {
        
        VStack{
            GeometryReader{ proxy in
                ScrollView{
                    LazyVGrid(columns: [
                        GridItem(spacing: 20),
                        GridItem(spacing: 20)
                    ]){
                        ForEach(isPrivate ? privateNoteData: publicNoteData){ note in
                            NoteListItemView(title: note.title)
                                .onTapGesture {
                                    isNoteVisible = true
                                    
                                    selectedTitle = note.title
                                    
                                    
                                }
                        }
                    }
                }
            }.padding(20)
            
        }.onAppear(){
//            publicNoteData = dataService.getPublicNotes()
        }.sheet(isPresented: $isNoteVisible){
            NoteView(title: $selectedTitle,isNoteVisible: $isNoteVisible)
        }
    }
}

#Preview {
    HomeView(publicNoteData: Binding.constant([]), privateNoteData: Binding.constant([]), isPrivate: Binding.constant(false))
}
