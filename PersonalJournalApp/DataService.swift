//
//  DataService.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import Foundation

struct DataService{
    
    func getPublicNotes() -> [Note]{
        return [
            Note(title: "First Note", image: "note-theme"),
            Note(title: "Second Note", image: "note-theme"),
            Note(title: "Third Note", image: "note-theme"),
        ]
    }
    
    func getPrivateNotes() -> [Note]{
        return []
    }
}
