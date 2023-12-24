//
//  DataService.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import Foundation

struct DataService{
    
    var publicNote: [Note] = []
    
//    func addPublicNotes(note: Note){
//        publicNote.append(note)
//    }
    
    func getPublicNotes() -> [Note]{
        return [
            Note(title: "First Note"),
            Note(title: "Second Note"),
            Note(title: "Third Note"),
        ]
    }
    
    func getPrivateNotes() -> [Note]{
        return []
    }
}
