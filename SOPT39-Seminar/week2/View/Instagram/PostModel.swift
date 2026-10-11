//
//  PostModel.swift
//  SOPT39-Seminar
//
//  Created by dayeon on 10/10/26.
//

import Foundation

struct PostModel: Identifiable {
    // Identifiable 프로토콜 채택 => id 프로퍼티 요구
    let id = UUID() // 식별자
    let profileImageName: String
    let username: String
    let location: String
    let postImageName: String
    let likesText: String
    let caption: String
    let timeText: String
    var isLiked = false
}

let examplePosts: [PostModel] = [
    PostModel(
            profileImageName: "profile_1",
            username: "이상엽",
            location: "서울 대한민국",
            postImageName: "post_1",
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "파트장님 최고~",
            timeText: "1시간 전"
        ),
        PostModel(
            profileImageName: "profile_2",
            username: "무파니",
            location: "아요의 숲",
            postImageName: "post_2",
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "같은 카드에 다른 데이터를 전달해보기~",
            timeText: "2시간 전"
        ),
        PostModel(
            profileImageName: "profile_3",
            username: "뽀야미",
            location: "모여봐요 아요의 숲",
            postImageName: "post_3",
            likesText: "모아요님 외 7,777명이 좋아합니다",
            caption: "같은 카드에 다른 데이터를 전달해보기~",
            timeText: "2시간 전"
        )
]
