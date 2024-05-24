//
//  PostView.swift
//  Xhread.app
//
//  Created by Miebori Kazuma on 2023/12/28.
//

import SwiftUI
import SwiftData


@Model
class Post {
    var content: String
    var contentID: UUID
    var userID: String
    var postedDate: Date
    
    init(content: String, userID: String) {
        self.content = content
        self.contentID = UUID()
        self.userID = userID
        self.postedDate = Date()
    }
}

struct ContentView: View {
    @Environment(\.modelContext) private var context
    @Query private var posts: [Post]
    
    @State var textFieldInput = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Posts", iconName: "paperplane.fill")
            VStack {
                TextField("write your post", text: $textFieldInput)
                    .onSubmit {
                        postContent()
                    }
                Button(
                    action: {
                        postContent()
                    },
                    label: {
                        Image(systemName: "paperplane.circle.fill")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .imageScale(.large)
                    }
                ).padding()
            }.padding()
            
            if posts.count <= 0 {
                VStack {
                    CalloutView(message: "喋ろうぜ！")
                    Spacer()
                }
            } else {
                List {
                    ForEach(posts.reversed()) {
                        post in
                        HStack (alignment: .top) {
                            // 仮置き
                            Image(systemName: "person.crop.circle")
                                .imageScale(.large)
                                .foregroundStyle(.tint)
                                .frame(
                                    maxHeight: .infinity,
                                    alignment: .top)
                            VStack (alignment: .leading) {
                                Text(post.content)
                                    .padding(2)
                                
                                Text(post.postedDate.formatted())
                                    .foregroundStyle(.secondary)
                                    .font(.caption2)
                            }
                            Spacer()
                            
                            Button(
                                action: {
                                    delete(post: post)
                                },
                                label: {
                                    Image(systemName: "trash.fill")
                                        .imageScale(.small)
                                }
                            )
                            .padding(4)
                        }
                        .padding(2)
                    }.padding(4)
                }
            }
        }
    }
    
    // テキスト入力
    private func postContent() {
        if textFieldInput.count > 0 {
            add(content: textFieldInput, userID: "example")
            textFieldInput = ""
        }
    }
    
    // データの追加
    private func add(content: String, userID: String) {
        let data = Post(content: content, userID: userID)
        context.insert(data)
    }

    // データの削除
    private func delete(post: Post) {
        context.delete(post)
    }

    // データのアップデート
//    private func update() {
//
//    }
}


#Preview {
    ContentView()
        .modelContainer(for: Post.self)
}
