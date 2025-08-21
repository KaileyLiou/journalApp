//
//  navBar.swift
//  JournalApp
//
//  Created by Kailey Liou on 8/20/25.
//

import SwiftUI

struct navBar: View {
    var body: some View {
        HStack{
            Image("lotus")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Mood Journaling!")
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity)
        .background(Color(red: 188/255, green: 219/255, blue: 178/255))
    }
}

#Preview {
    navBar()
}
