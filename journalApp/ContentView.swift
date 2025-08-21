//
//  ContentView.swift
//  JournalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                navBar()
                Text("Journaling has mental and physical benefits. You should journal today.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(Color(red: 178/255, green: 218/255, blue: 235/255))
                    )
                    .padding()
                
                NavigationLink(destination: NewJournalView()){
                    VStack{
                        Image(systemName: "book.pages.fill")
                            .imageScale(.large)
                        Text("Add Journal Entry")
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(red: 235/255, green: 178/255, blue: 210/255), lineWidth: 5)
                    )
                    .foregroundStyle(Color(red: 235/255, green: 178/255, blue: 210/255))
                    .padding()
                }
            }
                Spacer()
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
