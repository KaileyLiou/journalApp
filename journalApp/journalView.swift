//
//  journalView.swift
//  journalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftUI
import SwiftData

struct journalView: View {
    @Query(sort: \JournalEntryModel.date, order: .reverse) var entries: (JournalEntryModel)
    
    var body: some View {
        Navbar()
            .navigationBarBackButtonHidden(true)
        
        List(entries) { entry in
            VStack (spacing: 5) {
                Text(entry.title)
                    .font(.headline)
                Text(entry.entry)
                    .font(.body)
                Text(entry.date.formatted(date: .abbreviated, time: .shortened))
                    .font(.caption)
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical,5)
        
        Spacer()
        
        HStack{
            NavigationLink(destination: NewJournalView()) {
                VStack{
                    Image(systemName: "plus.fill")
                        .imageScale(.large)
                    Text("Write a Journal")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius:25)
                        .stroke(Color(red:235/255, green: 178/255, blue: 210/255))
                )
                .foregroundStyle(Color.purple)
            }
            NavigationLink(destination: NewJournalView()) {
                VStack{
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                    Text("Home Page")
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius:25)
                        .stroke(Color(red:235/255, green: 178/255, blue: 210/255))
                )
                .foregroundStyle(Color.purple)
        }
    }
}

#Preview {
    JournalView()
}
