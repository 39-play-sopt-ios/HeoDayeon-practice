//
//  LikeObservationPracticeView.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/17/26.
//

import SwiftUI
import Observation

@Observable
final class Post {
    var author = "모아요"
    var isLiked = false
}
//참조 타입이서 내부 값을 관찰할 수 없음
//상태를 실제로 바뀌고 있는데 화면이 업데이트되지 않는다

struct LikeObservationPracticeView: View {
    @State private var post = Post()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(post.author)
                .font(.headline)
            
            Button {
                post.isLiked.toggle()
                print("현재 좋아요 상태:", post.isLiked)
            } label: {
                Label(
                    post.isLiked ? "좋아요 취소" : "좋아요",
                    systemImage: post.isLiked ? "heart.fill" : "heart"
                )
                .foregroundStyle(
                    post.isLiked ? Color.red : Color.gray
                )
            }
            
            Text(
                post.isLiked ? "좋아요를 눌렀어요!" : "아직 좋아요를 누르지 않았어요."
            )
        }
        .padding()
    }
}

#Preview {
    LikeObservationPracticeView()
}
