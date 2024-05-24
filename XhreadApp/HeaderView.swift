//
//  HeaderView.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/28.
//

import SwiftUI


struct HeaderView: View {
    let title: String
    let iconName: String
    var icon: Image
    
    init(title: String, iconName: String = "swift") {
        self.title = title
        self.iconName = iconName
        self.icon = Image(systemName: iconName)
    }
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .imageScale(.large)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    HeaderView(title: "Title")
}
