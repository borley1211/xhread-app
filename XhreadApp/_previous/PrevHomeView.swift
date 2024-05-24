//
//  HomeView.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/28.
//

import SwiftUI

struct PrevHomeView: View {
    var body: some View {
        VStack {
            HeaderView(title: "VoidApp")
            ScrollView {
                PrevContentView(post: "Hello!")
                PrevContentView(post: "こんにちは！")
            }
        }
        .padding()
    }
}

#Preview {
    PrevHomeView()
}
