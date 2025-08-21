//
//  NewJournalView.swift
//  JournalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftUI
import SwiftData

struct NewJournalView: View {
    @Environment(\.modelContext) private var context
    @State private var title: String = ""
    @State private var entry: String = ""
    
    var body: some View {
        NavigationStack {
            navBar()
                .navigationBarBackButtonHidden(true)
            
            VStack{
                Text("New Journal Entry")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 10)
                    .foregroundStyle(.pink)
                
                TextField("Journal Entry Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Journal entry goes here...", text: $entry)
                    .textFieldStyle(.roundedBorder)
                    .frame(height:200)
                
                Button(action: {
                    let newEntry = JournalEntryModel(
                        title: title,
                        entry: entry
                    )
                    context.insert(newEntry)
                    try? context.save()
                    
                    title=""
                    entry=""
                }) {
                    Text("Save Entry")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.pink)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                }
                
            }
            .padding()
            
            Spacer()
            
            HStack{
                NavigationLink(destination: journalView()) {
                    VStack{
                        Image(systemName: "book.pages.fill")
                            .imageScale(.large)
                        Text("Past Journals")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius:25)
                            .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                    )
                    .foregroundStyle(Color.purple)
                }
                
                NavigationLink(destination: ContentView()) {
                    VStack{
                        Image(systemName: "house.fill")
                            .imageScale(.large)
                        Text("Home Page")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius:25)
                            .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                    )
                    .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
                }
            }
        }
            
        }
    }

#Preview {
    NewJournalView()
}
