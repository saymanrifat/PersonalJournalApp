//
//  HomeView.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct HomeView: View {
    @State var privateNoteData:[Note] = []
    @State var publicNoteData:[Note] = []
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
                        ForEach(publicNoteData){ note in
                            NoteListItemView(title: note.title, image: note.image)
                                .onTapGesture {
                                    isNoteVisible = true
                                    
                                    selectedTitle = note.title
                                    selectedImage = note.image
                                    
                                }
                        }
                    }
                }
            }.padding(20)
            
        }.onAppear(){
            publicNoteData = dataService.getPublicNotes()
        }.sheet(isPresented: $isNoteVisible){
            NoteView(title: $selectedTitle, image: $selectedImage, isNoteVisible: $isNoteVisible)
        }
    }
}

#Preview {
    HomeView()
}
