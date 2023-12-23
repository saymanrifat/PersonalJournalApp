//
//  Note.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import Foundation

struct Note: Identifiable{
    var id: UUID = UUID()
    var title: String
    var image: String
}
