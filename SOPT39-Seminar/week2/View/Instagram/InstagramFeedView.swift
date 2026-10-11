//
//  InstagramFeedView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var posts: [PostModel] = examplePosts
    
    var body: some View {
        VStack {
           
            ScrollView {
                VStack (alignment: .center, spacing: 20) {
                    Image(.logo)
                        .padding(.bottom, 30)
                    
                    ForEach($posts) { $post in
                        PostCardView(isLiked: $post.isLiked,
                                     profileImage: Image(post.profileImageName),
                                     username: post.username,
                                     location: post.location,
                                     postImage: Image(post.postImageName),
                                     likesText: post.likesText,
                                     caption: post.caption,
                                     timeText: post.timeText)}
                }
                
            }
            Spacer()
        }
    }
}

#Preview {
    InstagramFeedView()
}
