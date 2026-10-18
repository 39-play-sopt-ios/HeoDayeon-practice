//
//  InstagramFeedView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI

struct InstagramFeedView: View {
    @State private var viewModel = InstagramFeedViewModel()
    
    var body: some View {
        VStack {
            
            ScrollView {
                VStack (alignment: .center, spacing: 20) {
                    Image(.logo)
                        .padding(.bottom, 30)
                    
                    ForEach(viewModel.examplePosts) { post in
                        PostCardView(
                            profileImage: Image("profile_4"),
                            username: post.username,
                            location: post.location,
                            postImage: Image(post.postImageName),
                            likesText: post.likesText,
                            caption: post.caption,
                            timeText: post.timeText,
                            isLiked: post.isLiked,
                            onLikeTapped: {
                                viewModel.toggleLike(id: post.id)
                            }
                        )
                    }
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    InstagramFeedView()
}
