//
//  CalloutView.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/29.
//

import SwiftUI

struct CalloutView: View {
    var message: String
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        HStack {
            Image(systemName: "lightbulb.fill")
            Text(message)
                .bold()
                .font(.callout)
        }
        .foregroundStyle(.bar)
        .frame(
            maxWidth: .infinity, alignment: .leading
        )
        .padding()
        
        .background(.accent)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .padding()
    }
}

#Preview {
    CalloutView(message: "Message")
}
