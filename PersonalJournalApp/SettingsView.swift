//
//  SettingsView.swift
//  PersonalJournalApp
//
//  Created by Sayman Rifat on 12/23/23.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isPrivate: Bool
    var body: some View {
        VStack(alignment: .leading){
            Text("Settings")
                .font(.largeTitle)
            
            Toggle(isOn: $isPrivate) {
                Text("Turn on Private Mode")
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    SettingsView(isPrivate: Binding.constant(false))
}
