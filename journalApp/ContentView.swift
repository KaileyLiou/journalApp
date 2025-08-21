//
//  ContentView.swift
//  journalApp
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
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(Color(red: 170/255, green: 218/255, blue: 255/255))
                    )
                    .padding()
                
                NavigationLink(destination: NewJournalView()){
                    VStack{
                        Image(systemName: "book.page.fill")
                            .imageScale(.large)
                        Text("Add Journal Entry")
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundStyle(Color(red: 178/255, green: 218/255, blue: 235/255))
                    )
                    .foregroundStyle(Color.purple)
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
