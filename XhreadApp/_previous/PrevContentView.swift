//
//  ContentView.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/28.
//

import SwiftUI
import SwiftData


struct PrevContentView: View {
    let post: String
    init(post: String) {
        self.post = post
    }
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(post)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                       alignment: .leading)
        }
        .padding()
        .overlay( /// apply a rounded border
            RoundedRectangle(
                cornerRadius: 8)
            .inset(by: 1)
            .stroke(
                    .gray.opacity(0.2),
                    lineWidth: 0.5)
        )
    }
}


// Preview

#Preview {
    PrevContentView(post: "Hello, World!")
}
